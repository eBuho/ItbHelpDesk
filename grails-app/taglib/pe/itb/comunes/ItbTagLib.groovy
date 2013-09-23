package pe.itb.comunes

class ItbTagLib {
	
	static namespace = "itb"
	
	/**
	 * Dibuja un selector (combo) de parametros de un catalogo
	 * y lo bindea a un atributo
	 *
	 * @attr catalogo REQUIRED Codigo del catalogo de los parametros
	 * @attr entidad REQUIRED Instancia de la entidad del atributo
	 * @attr atributo REQUIRED Nombre del atributo de la entidad donde se mapeará el valor del parámetro
	 */
	def selectParametro = { attrs ->
		def catalogo = Parametro.findByCodParametroAndCodElemento(attrs.catalogo, "00")
		def parms = catalogo.getParametros()
		def args = [attrs.atributo, attrs.entidad[attrs.atributo]]
		out << render(template: "/parametro/parametroTemplate", model: [parms: parms, args:args])
	}
	
	/**
	 * Decodifica los valores de un atributo desde parametros
	 *
	 * @attr catalogo REQUIRED Codigo del catalogo de los parametros
	 * @attr atributo REQUIRED Nombre del atributo de la entidad
	 * @attr valor REQUIRED Valor del atributo a decodificar
	 */
	def decodeParametro = { attrs ->
		def catalogo  = attrs.remove("catalogo")
		def valor = attrs.remove("valor")
		def parametro = Parametro.findByCodParametroAndValCadena(catalogo, valor)
		out << parametro.toString().encodeAsHTML()
	}
}
