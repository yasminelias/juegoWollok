 import wollok.game.*
import visuales.*
import elementos.*

object nivelUno{
	
	const anchoTotal = 25
	const altoTotal = 15
	
	method inicio(){
		game.clear()
		game.title("Golfito")
		game.width(anchoTotal)
		game.height(altoTotal)
		game.boardGround("Inicio.jpg")
		
		keyboard.s().onPressDo{self.configurate()}
	}	

		
	method configurate() {
	//	CONFIGURACI�N DEL JUEGO
		game.clear()
		game.width(anchoTotal)
		game.height(altoTotal)
		game.boardGround("Fondo.png")
		
		//Visuales	
		game.addVisualCharacter(golfista)      
		game.addVisual(hoyo)
		game.addVisual(arena)
		game.addVisual(agua)
		game.addVisual(estrella)
		game.addVisual(rayo)
	}
		//Colisiones
		
		
//		game.onTick(20000, "movimiento", { agua.movete() })
//		game.onTick(10000, "movimiento", { arena.movete() }) NOSE COMO HACER LO DEL ALEATORIOO
//	
    
//	method ubicarAleatoriamente(visual){
//		var posicion = new Position (x=1.randomUpTo(anchoTotal),y=1.randomUpTo(altoTotal))
//		if(game.getObjectsIn(posicion).isEmpty())
//			visual.position(posicion)
//		else
//			self.ubicarAleatoriamente(visual)			
//		


	method hasGanado(){
		game.clear()
		game.width(anchoTotal)
		game.height(altoTotal)
		game.addVisual("minionFeliz.jpg")
		keyboard.p().onPressDo{self.inicio()}
		keyboard.f().onPressDo{game.stop()}
	}
	
	method gameOver(){
		game.clear()
		game.title("Golfito")
		game.width(anchoTotal)
		game.height(altoTotal)
        game.addVisual("minionTriste.jpg")
		keyboard.p().onPressDo{self.inicio()}
		keyboard.f().onPressDo{game.stop()}
		
	}
}
	