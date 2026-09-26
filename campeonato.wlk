import pilotos.*
import escuderias.*
import neumaticos.*

object campeonato {

    const pilotos = []

    // gestion de pilotos
    method registrarPiloto(piloto){
        pilotos.add(piloto) // registra al piloto 
    }

    method darDeBajaPiloto(piloto){
        pilotos.remove(piloto)
    }


    //consultas sobre pilotos y puntos
    method lider() {
        return pilotos.max({p => p.puntos() })
    }

    method ultimo() {
        return pilotos.min({p => p.puntos()})
    }

    method puntosPorEscuderia(escuderiaDada) {
        return pilotos.filter({ p => p.escuderia() == escuderiaDada }).sum({ p => p.puntos() })
    }

    method deltaPuntos() {
        return self.lider().puntos() - self.ultimo().puntos()
    }
    method esCompetitivo() {
        return self.deltaPuntos() < 100 
    }

    method hayPilotoDeEscuderia(escuderiaDada) {
        return pilotos.any({p => p.escuderia() == escuderiaDada })
    }

    // registros de fecha
    method registrarCierreFecha(primero, segundo, vueltaRapida) {
        primero.ganarCarrera(segundo)
        vueltaRapida.hizoVueltaRapida()
    }
    
}