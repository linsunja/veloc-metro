//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja=20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad : Velocidades
    var cambiaVelocidad : Int = 0
    
    init(){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        if(cambiaVelocidad == 0){
            self.velocidad = Velocidades.Apagado
        } else if(cambiaVelocidad == 1) {
            self.velocidad = Velocidades.VelocidadBaja
        } else if (cambiaVelocidad % 2) == 0 {
            self.velocidad = Velocidades.VelocidadMedia
        } else {
            self.velocidad = Velocidades.VelocidadAlta
        }
        return (velocidad.rawValue, String(velocidad))
    }
}

var auto = Auto()
var tupla : (actual : Int, velocidadEnCadena: String)

for indice in 0...19 {
    auto.cambiaVelocidad = indice
    tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual), \(tupla.velocidadEnCadena)")
    
}