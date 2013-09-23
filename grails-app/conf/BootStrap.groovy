import pe.itb.comunes.*
import pe.itb.seguridad.*

class BootStrap {

    def init = { servletContext ->
		int contItem
		
		/*** Creacion de parametros de prueba ****/
		
		def domTipDocs = new Parametro(codParametro:"001", codElemento:"00", desParametro:"Tipos de documento")
		domTipDocs.validate()
		if (domTipDocs.hasErrors()){
			domTipDocs.errors.allErrors.each { println it }
		}
		domTipDocs.save(true)
		contItem = 0
		[N:"Partida Nacimiento", D:"DNI", P:"Pasaporte", C:"Carne Extranjeria"].each{tipDoc, desDoc ->
			contItem ++
			def parametro = new Parametro(codParametro:domTipDocs.codParametro, codElemento:contItem.toString().padLeft(2,"0"), desParametro:desDoc, valCadena:tipDoc, dominio:domTipDocs)
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
