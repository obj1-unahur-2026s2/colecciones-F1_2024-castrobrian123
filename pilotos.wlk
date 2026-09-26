import escuderias.*
import neumaticos.*

// VERSTAPPEN
object verstappen {
    var puntos = 437
    const escuderia = redBull
    
    // neumaticos
    var neumatico = blando
    var vueltasConNeumatico = 0

    method neumatico() = neumatico

    method sumarUnaVuelta() {
        vueltasConNeumatico += 1
    }

    method vueltasQueLeQuedan() {
        return neumatico.duracion() - vueltasConNeumatico
    }

    method entrarAlPitStop(nuevoNeumatico) {
        neumatico = nuevoNeumatico
        vueltasConNeumatico = 0
    }

    // puntos
    method puntos() = puntos
    
    method escuderia() = escuderia
    
    method hizoVueltaRapida() {
        if (puntos > 200) {
            puntos += 1
        }
    }
    method ganarCarrera(segundo) {
        puntos += 25
    }

    // auxiliares
    method sumarPuntos(cantidad) {
        puntos += cantidad
    }
    
    method restarPuntos(cantidad) {
        puntos -= cantidad
    }
} 


// NORRIS
object norris {
    var puntos = 374
    const escuderia = mclaren

    // neumatico
    var neumatico = blando
    var vueltasConNeumatico = 0

    method neumatico() = neumatico

    method sumarUnaVuelta() {
        vueltasConNeumatico += 1
    }

    method vueltasQueLeQuedan() {
        return neumatico.duracion() - vueltasConNeumatico
    }

    method entrarAlPitStop(nuevoNeumatico) {
        neumatico = nuevoNeumatico
        vueltasConNeumatico = 0
    }

    // puntos
    method puntos() = puntos
    
    method escuderia() = escuderia
    
    method hizoVueltaRapida() {
        if (puntos > 200) {
            puntos += 1
        }
    }
    
    method ganarCarrera(segundo) {
        puntos += 25
        if (segundo.escuderia() == self.escuderia()){
            segundo.sumarPuntos(3)
        }
    }

    // auxiliares
    method sumarPuntos(cantidad) {
        puntos += cantidad
    }
    
    method restarPuntos(cantidad) {
        puntos -= cantidad
    }
}


// SAINZ
object sainz {
    var puntos = 241
    const escuderia = ferrari
    var vieneDeGanar = false

    // neumatico
    var neumatico = blando
    var vueltasConNeumatico = 0

    method neumatico() = neumatico

    method sumarUnaVuelta() {
        vueltasConNeumatico += 1
    }

    method vueltasQueLeQuedan() {
        return neumatico.duracion() - vueltasConNeumatico
    }

    method entrarAlPitStop(nuevoNeumatico) {
        neumatico = nuevoNeumatico
        vueltasConNeumatico = 0
    }

    // puntos
    
    method puntos() = puntos
    
    method escuderia() = escuderia
    
    method hizoVueltaRapida() {
        
        // no suma nada
    }
    
    method ganarCarrera(segundo) {
        puntos += 25
        if (vieneDeGanar) {
            puntos += 10
        }
        vieneDeGanar = true
    }

    // auxiliares
    method sumarPuntos(cantidad) {
        puntos += cantidad
    }
    
    method restarPuntos(cantidad) {
        puntos -= cantidad
    }
} 


//lECLERC
object leclerc {
    var puntos = 356
    const escuderia = ferrari

    // neumatico 
    var neumatico = blando
    var vueltasConNeumatico = 0

    method neumatico() = neumatico

    method sumarUnaVuelta() {
        vueltasConNeumatico += 1
    }

    method vueltasQueLeQuedan() {
        return neumatico.duracion() - vueltasConNeumatico
    }

    method entrarAlPitStop(nuevoNeumatico) {
        neumatico = nuevoNeumatico
        vueltasConNeumatico = 0
    }

    // puntos 
    method puntos() = puntos
    
    method escuderia() = escuderia
    
    method hizoVueltaRapida() {
        puntos += 2
    }
    
    method ganarCarrera(segundo) {
        puntos += 25
        segundo.restarPuntos(3)
    }

    // auxiliares
    method sumarPuntos(cantidad) {
        puntos += cantidad
    }
    
    method restarPuntos(cantidad) {
        puntos -= cantidad
    }
} 

// PIASTRI
object piastri {
    var puntos = 292
    const escuderia = mclaren

    // neumatico
    var neumatico = blando
    var vueltasConNeumatico = 0

    method neumatico() = neumatico

    method sumarUnaVuelta() {
        vueltasConNeumatico += 1
    }

    method vueltasQueLeQuedan() {
        return neumatico.duracion() - vueltasConNeumatico
    }

    method entrarAlPitStop(nuevoNeumatico) {
        neumatico = nuevoNeumatico
        vueltasConNeumatico = 0
    }
    
    // puntos
    method puntos() = puntos
    
    method escuderia() = escuderia
    
    method hizoVueltaRapida() {
        
        // no suma nada
    }
    
    method ganarCarrera() {
        puntos += 25
    }
    
    // auxiliares
    method sumarPuntos(cantidad) {
        puntos += cantidad
    }
    
    method restarPuntos(cantidad) {
        puntos -= cantidad
    }
}