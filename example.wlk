object coliseo {
  
}
class Dimachaerus{
  var vida = 100
  const arma = []
  const armadura = null
  var destreza
  method fuerza() = 10

  method atacar(objetivo){
    objetivo.recibirDanio(self.poderAtaque()- objetivo.defensa())
    destreza = destreza + 1
  }

  method poderAtaque() = self.fuerza() + arma.sum({a=>a.poder()})

  method recibirDanio(danio){
    vida = vida - danio
  }
  method defensa() = destreza / 2
  method vida() = vida
}
class Mirmillon {
  var  destreza = 15
  var fuerza
  var arma
  var armadura
  var vida = 100
  method atacar(objetivo){
    objetivo.recibirDanio(self.poderAtaque()- objetivo.defensa())
    destreza = destreza + 1
  }
  method poderAtaque() = fuerza + arma.poder()

  method defensa() = destreza + armadura.puntos(self)
  method recibirDanio(danio){
    vida = vida - danio
  }
  method vida() = vida

}

class ArmaDefilo {
  const filo
  const longitud
  method poder() = filo * longitud
}

class ArmaContundente {
  const peso
  method poder() = peso
}

object casco{
  method puntos(gladiador) = 10
}

object escudo{
  method puntos(gladiador) = 5 + gladiador.destreza()*0.1
} 