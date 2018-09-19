import golosinas.*

object mariano {
	var property golosinasCompradas = []
	
	method golosinas() {return golosinasCompradas}
	
	method comprar(golosina) { 
		golosinasCompradas.add(golosina)
	}
	method desechar(golosina){
		golosinasCompradas.remove(golosina)
	}
	method probarGolosinas() {
		golosinasCompradas.forEach {golosina => golosina.mordisco()}
	}
	method hayGolosinasSinTACC() {
		return golosinasCompradas.any {golosina => golosina.libreGluten()}
	}
	method preciosCuidados() {
		return not golosinasCompradas.any {golosina => golosina.precio() > 10}
	}
	method golosinaDeSabor(unSabor) {
		return golosinasCompradas.find {golosina => golosina.gusto() == unSabor}
	}
	method golosinasDeSabor(unSabor) {
		return golosinasCompradas.filter {golosina => golosina.gusto() == unSabor}
	}
	method sabores() {
		return golosinasCompradas.map {golosina => golosina.gusto()}.asSet()
	}
	method golosinaMasCara() {
		return golosinasCompradas.max {golosina => golosina.precio()}
	}
	method pesoGolosinas() {
		return golosinasCompradas.sum {golosina => golosina.peso()}
	}
	method golosinasFaltantes(golosinasDeseadas){
		return golosinasDeseadas.asSet().difference(golosinasCompradas.asSet())
	}
	method gustosFaltantes(gustosDeseados){
		return gustosDeseados.asSet().difference(self.sabores())
	}
}

