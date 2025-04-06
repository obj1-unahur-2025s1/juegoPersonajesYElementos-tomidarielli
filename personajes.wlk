import elementos.*
import armas.*
import jugadores.*

object floki {
  var arma = ballesta
  
  method arma() = arma
  
  method arma(unArma) {
    arma = unArma
  }
  
  method encontrar(elemento) {
    if (arma.estaCargada()) {
      elemento.recibeAtaque(arma.potencia())
      arma.registrarUso()
    }
  }
}

object mario {
  var valor = 0
  var ultimoElemento = null
  
  method encontrar(elemento) {
    valor += elemento.valorOtogado()
    elemento.recibeTrabajo()
    ultimoElemento = elemento
  }
  
  method esFeliz() = (valor >= 50) or (ultimoElemento.altura() >= 10)
}