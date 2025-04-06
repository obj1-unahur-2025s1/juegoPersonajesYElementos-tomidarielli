import personajes.*
import elementos.*
import armas.*

object luisa {
  var personajeActivo = null
  
  method personajeActivo() = personajeActivo
  
  method personajeActivo(personaje) {
    personajeActivo = personaje
  }
  
  method aparece(elemento) {
    personajeActivo.encontrar(elemento)
  }
}