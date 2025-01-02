(define (problem PROBLEMA_NIVELBASICO)
    (:domain DOMAIN_NIVELBASICO)
    (:objects
        CapitanAmerica_ElPrimerVengador CapitanaMarvel SuperMarioBros ElSenorDeLosAnillos_LaGuerraDeLosRohirrim ElSenorDeLosAnillos_AnillosDePoder - contenido
        lunes martes miercoles jueves viernes sabado domingo - dia
    )
    (:init
        ; Peliculas que el usuario quiere ver
        (tienequever CapitanaMarvel)
        (tienequever SuperMarioBros)
        (tienequever ElSenorDeLosAnillos_AnillosDePoder)

        ; Predecesores de las peliculas
        (predecesor CapitanAmerica_ElPrimerVengador CapitanaMarvel)
        (predecesor ElSenorDeLosAnillos_LaGuerraDeLosRohirrim ElSenorDeLosAnillos_AnillosDePoder)
        
        ; Estado inicial: ninguno ha sido visto ni agendado
        (not (havisto CapitanAmerica_ElPrimerVengador))
        (not (havisto CapitanaMarvel))
        (not (havisto SuperMarioBros))
        (not (havisto ElSenorDeLosAnillos_LaGuerraDeLosRohirrim))
        (not (havisto ElSenorDeLosAnillos_AnillosDePoder))

        ; Ninguna pelicula ha sido agendada
        (not (agendado CapitanAmerica_ElPrimerVengador))
        (not (agendado CapitanaMarvel))
        (not (agendado SuperMarioBros))
        (not (agendado ElSenorDeLosAnillos_LaGuerraDeLosRohirrim))
        (not (agendado ElSenorDeLosAnillos_AnillosDePoder))

        ; Ningun dia ha sido llenado
        (not (lleno lunes))
        (not (lleno martes))
        (not (lleno miercoles))
        (not (lleno jueves))
        (not (lleno viernes))
        (not (lleno sabado))
        (not (lleno domingo))

        ; Contenidos que no tienen predecesores
        (libredepredecesores CapitanAmerica_ElPrimerVengador)
        (libredepredecesores SuperMarioBros)
        (libredepredecesores ElSenorDeLosAnillos_LaGuerraDeLosRohirrim)

        ; Contenidos que tienen algun predecesor
        (not (libredepredecesores CapitanaMarvel))
        (not (libredepredecesores ElSenorDeLosAnillos_AnillosDePoder))
    )
    (:goal
        (and
            ; Todas las peliculas han sido agendadas
            (agendado CapitanAmerica_ElPrimerVengador)
            (agendado CapitanaMarvel)
            (agendado SuperMarioBros)
            (agendado ElSenorDeLosAnillos_LaGuerraDeLosRohirrim)
            (agendado ElSenorDeLosAnillos_AnillosDePoder)
        )
    )
)