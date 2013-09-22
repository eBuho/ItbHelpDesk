package pe.itb.comunes



import org.junit.*
import grails.test.mixin.*

@TestFor(UbigeoController)
@Mock(Ubigeo)
class UbigeoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/ubigeo/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.ubigeoInstanceList.size() == 0
        assert model.ubigeoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.ubigeoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.ubigeoInstance != null
        assert view == '/ubigeo/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/ubigeo/show/1'
        assert controller.flash.message != null
        assert Ubigeo.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/ubigeo/list'

        populateValidParams(params)
        def ubigeo = new Ubigeo(params)

        assert ubigeo.save() != null

        params.id = ubigeo.id

        def model = controller.show()

        assert model.ubigeoInstance == ubigeo
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/ubigeo/list'

        populateValidParams(params)
        def ubigeo = new Ubigeo(params)

        assert ubigeo.save() != null

        params.id = ubigeo.id

        def model = controller.edit()

        assert model.ubigeoInstance == ubigeo
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/ubigeo/list'

        response.reset()

        populateValidParams(params)
        def ubigeo = new Ubigeo(params)

        assert ubigeo.save() != null

        // test invalid parameters in update
        params.id = ubigeo.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/ubigeo/edit"
        assert model.ubigeoInstance != null

        ubigeo.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/ubigeo/show/$ubigeo.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        ubigeo.clearErrors()

        populateValidParams(params)
        params.id = ubigeo.id
        params.version = -1
        controller.update()

        assert view == "/ubigeo/edit"
        assert model.ubigeoInstance != null
        assert model.ubigeoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/ubigeo/list'

        response.reset()

        populateValidParams(params)
        def ubigeo = new Ubigeo(params)

        assert ubigeo.save() != null
        assert Ubigeo.count() == 1

        params.id = ubigeo.id

        controller.delete()

        assert Ubigeo.count() == 0
        assert Ubigeo.get(ubigeo.id) == null
        assert response.redirectedUrl == '/ubigeo/list'
    }
}
