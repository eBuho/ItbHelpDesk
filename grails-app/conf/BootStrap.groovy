import pe.itb.comunes.*
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
    }
    def destroy = {
    }
}
