
object blando {
    method duracion() = 15 // vueltas
    method rindeMejor(temperatura) = temperatura < 25 // grados
}

object medio {
    method duracion() = 30 // vueltas
    method rindeMejor(temperatura) = temperatura.between(25,40) // grados
}

object duro {
    method duracion() = 45 // vueltas
    method rindeMejor(temperatura) = temperatura > 40 // grados
}