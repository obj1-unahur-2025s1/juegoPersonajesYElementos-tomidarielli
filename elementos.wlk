import armas.*
import personajes.*
import jugadores.*

object castillo {
  var defensa = 150
  
  method altura() = 20
  
  method defensa() = defensa
  
  method recibeAtaque(potenciaDeAtaque) {
    defensa = 0.max(defensa - potenciaDeAtaque)
  }
  
  method valorOtorgado() = defensa / 5
  
  method recibeTrabajo() {
    defensa = 200.min(defensa + 20)
  }
}

object aurora {
  var estaViva = true
  
  method altura() = 1
  
  method estaViva() = estaViva
  
  method recibeAtaque(potenciaDeAtaque) {
    if (potenciaDeAtaque >= 10) {
      estaViva = false
    }
  }
  
  method valorOtorgado() = 15
  
  method recibeTrabajo() {
    
  }
}

object tipa {
  var altura = 8
  
  method altura() = altura
  
  method recibeAtaque(potenciaDeAtaque) {
    
  }
  
  method valorOtorgado() = altura * 2
  
  method recibeTrabajo() {
    altura += 1
  }
}