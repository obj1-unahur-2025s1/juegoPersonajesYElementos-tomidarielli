import personajes.*
import elementos.*
import jugadores.*

object ballesta {
  const potencia = 4
  var municion = 10
  
  method potencia() = potencia
  
  method municion() = municion
  
  method estaCargada() = municion > 0
  
  method registrarUso() {
    municion = 0.max(municion - 1)
  }
}

object jabalina {
  const potencia = 30
  var municion = 1
  
  method municion() = municion
  
  method potencia() = potencia
  
  method estaCargada() = municion > 0
  
  method registrarUso() {
    municion = 0.max(municion - 1)
  }
}