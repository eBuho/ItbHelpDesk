import java.util.Date;

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
		/*** Creacion de usuarios de prueba ****/
		def ubigeo = Ubigeo.findByCodUbigeo("150101")
		def jcondor = new Usuario(apePaterno:"Condor", apeMaterno:"Oria", nombre:"Javier", tipDocumento:"D",
		numDocumento:"12345678", ubigeo:ubigeo, username:"jcondor", password:"jcondor", enabled:true)
		jcondor.validate()
		if (jcondor.hasErrors()){
			jcondor.errors.allErrors.each { println it }
		}
		jcondor.save(true)

		/*** Nuevo cliente ***/
		def jcondorc = new Cliente()
		jcondorc.properties = jcondor.properties
		jcondorc.codCliente = "000001"
		jcondorc.validate()
		if (jcondorc.hasErrors()){
			jcondorc.errors.allErrors.each { println it }
		}
		jcondorc.save(true)
		
		def acardenas = new Usuario(apePaterno:"Cardenas", apeMaterno:"Contreras", nombre:"Antoni", tipDocumento:"D",
			numDocumento:"46609636", ubigeo:ubigeo, username:"acardenas", password:"acardenas", enabled:true)
		acardenas.validate()
		if (acardenas.hasErrors()){
			acardenas.errors.allErrors.each { println it }
		}
		acardenas.save(true)
	
			/*** Nuevo cliente ***/
		def acardenasc = new Cliente()
		acardenasc.properties = acardenas.properties
		acardenasc.codCliente = "000002"
		acardenasc.validate()
		if (acardenasc.hasErrors()){
			acardenasc.errors.allErrors.each { println it }
		}
		acardenasc.save(true)
		
		/*** Ticket de prueba ***/
		def ticket = new Ticket(numeroDeTicket:"000001", fechaDeSolicitud:new Date(), asunto:"Error de programa",
			estado:"A", descripcion:"Al grabar la carta garantia sale un error", cliente:jcondorc, usuarioCrea:jcondor.username)
		ticket.validate()
		if (ticket.hasErrors()){
			ticket.errors.allErrors.each { println it }
		}
		ticket.save(true)
		
		def ticket2 = new Ticket(numeroDeTicket:"000002", fechaDeSolicitud:new Date(), asunto:"Error de programa",
			estado:"A", descripcion:"Al grabar la carta garantia sale un error", cliente:acardenasc, usuarioCrea:acardenas.username)
		ticket2.validate()
		if (ticket2.hasErrors()){
			ticket2.errors.allErrors.each { println it }
		}
		ticket2.save(true)
	}

	def destroy = {
	}
}
