package pe.itb.comunes

class ItbTagLib {
	
	static namespace = "itb"
	
	/**
	 * Dibuja un selector (combo) de parametros de un dominio
	 * y lo bindea a un atributo
	 *
	 * @attr dominio REQUIRED Codigo del dominio de los parametros
	 * @attr entidad REQUIRED Instancia de la entidad del atributo
	 * @attr atributo REQUIRED Nombre del atributo de la entidad donde se mapeará el valor del parámetro
	 */
	def selectParametro = { attrs ->
		def dominio = Parametro.findByCodParametroAndCodElemento(attrs.dominio, "00")
		def parms = dominio.getParametros()
		def args = [attrs.atributo, attrs.entidad[attrs.atributo]]
		out << render(template: "/parametro/parametroTemplate", model: [parms: parms, args:args])
	}
	
	/**
	 * Decodifica los valores de un atributo desde parametros
	 *
	 * @attr dominio REQUIRED Codigo del dominio de los parametros
	 * @attr atributo REQUIRED Nombre del atributo de la entidad
	 * @attr valor REQUIRED Valor del atributo a decodificar
	 */
	def decodeParametro = { attrs ->
		def dominio  = attrs.remove("dominio")
		def valor = attrs.remove("valor")
		def parametro = Parametro.findByCodParametroAndValCadena(dominio, valor)
		out << parametro.toString().encodeAsHTML()
	}
}
