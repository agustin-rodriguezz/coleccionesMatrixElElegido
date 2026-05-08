object neo{

    var energia = 100

    method esElElegido()= true

    method energia()= energia

    method vitalidad()= energia/10

    method saltar() = energia/2

}

object morfeo{

    var vitalidad = 8
    var estaCansado = false

    method esElElegido() = false

    method vitalidad()=vitalidad

    method saltar(){
        vitalidad= vitalidad-1
        estaCansado = true
    }
}

object trinity{
    method esElElegido() = false

    method vitalidad()= 0

    method saltar() {
    }

}

object nave{
    const pasajeros = [trinity,neo,morfeo]

    method pasajeros()= pasajeros

    method agregarPasajero(pasajero){
        pasajeros.add(pasajero)
    }

    method bajarPasajero(pasajero){
        return pasajeros.remove(pasajero)
    }

    method cantidadPasajeros(){
        return pasajeros.size()
    }

    method pasajeroDeMayorVit(){
        return pasajeros.max({p => p.vitalidad()})
    }

    method estaEquilibrada(){
        return 
    }

    method estaElElegido(){
        return pasajeros.any({p => p.esElElegido()})
    }

    method chocar(){
        pasajeros.forEach({p => p.saltar()
        self.bajarPasajero(p)
        })
    }

    method pasajerosSinElegido(){
        pasajeros.filter({p => not p.esElElegido()})
    }

    method acelerar(){
        self.pasajerosSinElegido().forEachp({p => p.saltar()})
    }

    method valiosos(){
      return pasajeros.filter({p => p.vitalidad() > 5 })
    }

    method alHorno(){
      return pasajeros.filter({p => p.vitalidad() == 0 })
    }

    method sePuedeEnfrentarAlAgen(){
        return pasajeros.all({p => p.vitalidad() > 2 })
    }

    method vitalidadPromedio(){
        return (pasajeros.sum({p => p.vitalidad()}) / pasajeros.size())
    }



    method vitalidadPar(){
      return pasajeros.filter({p => p.vitalidad() %2 == 0 })
    }

    method simulacroDeCombate(){
        pasajeros.forEach({p => p.saltar()  p.saltar()  p.saltar()})
    }


}
