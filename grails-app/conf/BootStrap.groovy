import pe.itb.comunes.*
import pe.itb.helpdesk.*
import pe.itb.seguridad.*

class BootStrap {

	def init = { servletContext ->
		int contItem

		/*** Creacion de parametros de prueba ****/
		//Tipos de documento
		def catTipDocs = new Parametro(codParametro:"001", codElemento:"00", desParametro:"Tipos de documento")
		catTipDocs.validate()
		if (catTipDocs.hasErrors()){
			catTipDocs.errors.allErrors.each { println it }
		}
		catTipDocs.save(true)
		contItem = 0
		[N:"Partida Nacimiento", D:"DNI", P:"Pasaporte", C:"Carne Extranjeria"].each{tipDoc, desDoc ->
			contItem ++
			def parametro = new Parametro(codParametro:catTipDocs.codParametro, codElemento:contItem.toString().padLeft(2,"0"), desParametro:desDoc, valCadena:tipDoc, catalogo:catTipDocs)
			parametro.validate()
			if (parametro.hasErrors()){
				parametro.errors.allErrors.each { println it }
			}
			parametro.save(true)
		}

		//Sexo
		def catSexo = new Parametro(codParametro:"002", codElemento:"00", desParametro:"Género de personas")
		catSexo.validate()
		if (catSexo.hasErrors()){
			catSexo.errors.allErrors.each { println it }
		}
		catSexo.save(true)
		contItem = 0
		[M:"Masculino", F:"Femenino"].each{flgSexo, desSexo ->
			contItem ++
			def parametro = new Parametro(codParametro:catSexo.codParametro, codElemento:contItem.toString().padLeft(2,"0"), desParametro:desSexo, valCadena:flgSexo, catalogo:catSexo)
			parametro.validate()
			if (parametro.hasErrors()){
				parametro.errors.allErrors.each { println it }
			}
			parametro.save(true)
		}

		//Estados
		def catEstado = new Parametro(codParametro:"003", codElemento:"00", desParametro:"Estados")
		catEstado.validate()
		if (catEstado.hasErrors()){
			catEstado.errors.allErrors.each { println it }
		}
		catEstado.save(true)
		contItem = 0
		[A:"Activo", I:"Inactivo"].each{flgEstado, desEstado ->
			contItem ++
			def parametro = new Parametro(codParametro:catEstado.codParametro, codElemento:contItem.toString().padLeft(2,"0"), desParametro:desEstado, valCadena:flgEstado, catalogo:catEstado)
			parametro.validate()
			if (parametro.hasErrors()){
				parametro.errors.allErrors.each { println it }
			}
			parametro.save(true)
		}

		/*** Creacion de usuarios de prueba ****/
		def jcondor = new Usuario(apePaterno:"Condor", apeMaterno:"Oria", nombres:"Javier", tipDocumento:"D",
		numDocumento:"12345678", username:"jcondor", password:"jcondor", enabled:true)
		jcondor.validate()
		if (jcondor.hasErrors()){
			jcondor.errors.allErrors.each { println it }
		}
		jcondor.save(true)

		/*** Nuevo cliente ***/
		
		def jcondor1 = (Cliente)Persona.get(jcondor.id)
		jcondor1.codCliente = "000001"
		jcondor1.validate()
		if (jcondor1.hasErrors()){
			jcondor1.errors.allErrors.each { println it }
		}
		jcondor1.save(true)

		/*** Ubigeos ***/
		int contProv, contDist, contDpto
		contDpto = 0
		[
			"AMAZONAS",
			"ANCASH",
			"APURIMAC",
			"AREQUIPA",
			"AYACUCHO",
			"CAJAMARCA",
			"CALLAO",
			"CUSCO",
			"HUANCAVELICA",
			"HUANUCO",
			"ICA",
			"JUNIN",
			"LA LIBERTAD",
			"LAMBAYEQUE",
			"LIMA",
			"LORETO",
			"MADRE DE DIOS",
			"MOQUEGUA",
			"PASCO",
			"PIURA",
			"PUNO",
			"SAN MARTIN",
			"TACNA",
			"TUMBES",
			"UCAYALI"
		].each {nomDpto->
			contDpto ++
			def dpto = new Ubigeo(codUbigeo:contDpto.toString().padLeft(2,"0") + "0000",desUbigeo:nomDpto)
			dpto.save(true)
			if(contDpto==15) {
				contProv = 0
				[
					"LIMA",
					"BARRANCA",
					"CAJATAMBO",
					"CANTA",
					"CAÑETE",
					"HUARAL",
					"HUAROCHIRI",
					"HUAURA",
					"OYON",
					"YAUYOS"
				].each { nomProv ->
					contProv++
					def prov = new Ubigeo(codUbigeo:dpto.codUbigeo.substring(0,2) +contProv.toString().padLeft(2,"0")+"00",desUbigeo:nomProv,ubigeoSup:dpto)
					prov.save(true)
					if(contProv==1) {
						contDist = 0
						[
							"LIMA",
							"ANCON",
							"ATE",
							"BARRANCO",
							"BREÑA",
							"CARABAYLLO",
							"CHACLACAYO",
							"CHORRILLOS",
							"CIENEGUILLA",
							"COMAS"
						].each { nomDist ->
							contDist ++
							def dist = new Ubigeo(codUbigeo:prov.codUbigeo.substring(0,4)+contDist.toString().padLeft(2,"0"),desUbigeo:nomDist,ubigeoSup:prov)
							dist.save(true)
						}
					}
				}
			}
		}
	}

	def destroy = {
	}
}
