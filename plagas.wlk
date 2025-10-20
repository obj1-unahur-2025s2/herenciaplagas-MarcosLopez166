class Plaga {
    var property poblacion
    method transmiteEnfermedades() = poblacion >= 10
    method aumentarPoblacion() {
        poblacion += poblacion / 10
    }
    method atacar(unElemento) {
        self.aumentarPoblacion()
        unElemento.plagarCon_(self)
    }
}
class Cucaracha inherits Plaga {
    var property pesoPromedio
    method danio() = poblacion / 2
    override method transmiteEnfermedades() = 
        poblacion >= 10 and super()
    override method aumentarPoblacion() {
        super()
        pesoPromedio += 2
    }
}
class Pulga inherits Plaga {
    method danio() = poblacion * 2
    override method transmiteEnfermedades() = false
}
class Garrapata inherits Pulga {
    override method aumentarPoblacion() {
        poblacion += poblacion / 20
    }
}
class Mosquito inherits Plaga {
    method danio() = poblacion
    override method transmiteEnfermedades() = 
        poblacion % 3 == 0 and super()
}