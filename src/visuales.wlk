import wollok.game.*
import configuraciones.*


object golfista {
	var property fuerza = 0
	var property estrellas = 0
	method image() = "Golfista.png"
	method position()= game.at(1,1)


	method sumaFuerza(cantidad) { fuerza += cantidad }

	method restaFuerza(cantidad) {
		if (cantidad > fuerza)
			throw new Exception(message = "No tengo suficiente fuerza para jugar")
		fuerza -= cantidad
	}
	
	method sumarEstrellas()
	{
		estrellas = {estrellas + 1}
	}
	method agarrarRayo(){
		self.sumaFuerza(rayo.fuerza())
	}
	method agarrarEstrella(){
	self.sumaFuerza(estrella.fuerza())
	self.sumarEstrellas()
	}
	method choqueArena(){
		self.restaFuerza(arena.fuerza())
	}
		method choqueAgua(){
		self.restaFuerza(agua.fuerza())
	}
	method ganarOPerder() {
		if(estrellas== 4)
	 	nivelUno.hasGanado()
		else 
		nivelUno.gameOver()
	}
	
	method cuantaFuerza(){
		game.say(self, "Tengo " + self.fuerza() + "de fuerza!")
	}}

object hoyo {
	method image() = "Hoyo.png"
	method position()= game.at(25,15)
	}
object arena {
	var property fuerza = 20

	method image() = "Arena.png"
	method position ()= game.at(4,12)
//	method movete() {nivelUno.ubicarAleatoriamente(self)}
	}

object agua { 
	
	var property fuerza = 100
	method image() = "Agua.png"
	method position() = game.at(10,5)
	//method movete() {nivelUno.ubicarAleatoriamente(self)}
}
object estrella {
	var property fuerza = 50
	method image() = "Estrella.png"
	method position() = game.at(1,15) 
}
object rayo {
	var property fuerza = 20
	method image() = "Rayo.png"
	method position() = game.at(23,6)
}

