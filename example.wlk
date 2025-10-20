class Hogar{
  var nivelMugre
  var confort
  method esBueno() = nivelMugre <= confort / 2
  method plagarCon_(unaPlaga) {
    nivelMugre += unaPlaga.danio()
  }
}
class Huerta{
  var capProduMensual
  method esBueno() = 
    capProduMensual > nivelFijo.valor()
  method plagarCon_(unaPlaga) {
    capProduMensual -= unaPlaga.danio() / 10
    if(unaPlaga.transmiteEnfermedades())
      {capProduMensual -= 10}
  }
}
object nivelFijo {
  var property valor = 2
}
class Mascota{
  var salud
  method esBueno() = salud > 250
  method plagarCon_(unaPlaga) {
    if(unaPlaga.transmiteEnfermedades()){
      salud -= unaPlaga.danio()
    }
  }
}
class barrios {
  const property elementos = #{}
  method agregarElemento(unElemento) {
    elementos.add(unElemento)
  }
  method quitarElemento(unElemento) {
    elementos.remove(unElemento)
  }
  method esCopado() = 
    elementos.count({unel => unel.esBueno()}) 
    >
    elementos.count({unel => unel.esBueno()}) - elementos.size()
}