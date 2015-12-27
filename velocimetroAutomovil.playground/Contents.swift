//: Playground - noun: a place where people can play

import UIKit



enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init (velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    var velocidadTemp : Int
    
    init(){
        self.velocidad = .Apagado
        velocidadTemp = self.velocidad.rawValue
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String ){
        let leyenda : String
        velocidadTemp = self.velocidad.rawValue
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
            leyenda = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            leyenda = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            leyenda = "Velocidad Alta"
        }
        
        return (actual: velocidadTemp, velocidadEnCadena: leyenda)
    }
    
}

var automovil = Auto()

for var i in 1...20 {
    print(automovil.cambioDeVelocidad())
}