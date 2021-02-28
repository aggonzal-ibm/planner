(define (problem Recoger_Pacientes)
   (:domain ambulancia)
   (:objects
         ambulancia  - ambulancia
         locacion1 locacion2 locacion3 locacion4 - locacion
         paciente1 paciente2 - paciente 
      
        )
    (:init
        (fuera_ambulancia paciente1)
        (paciente_locacion paciente1  locacion4)
        (fuera_ambulancia paciente2)
        (paciente_locacion paciente2 locacion3)
        
        (ambulancia ambulancia)
        (ambulancia_locacion ambulancia   locacion1)
        
        (camino   locacion1 locacion2)
        (camino   locacion2 locacion4)
        (camino   locacion4 locacion3)
        (camino   locacion3 locacion4)
        (camino   locacion4 locacion2)
        (camino   locacion2 locacion1)
       
        )
    (:goal
      (and
        (fuera_ambulancia paciente1)
        (paciente_locacion paciente1  locacion1)
        (fuera_ambulancia paciente2)
        (paciente_locacion paciente2 locacion1)
       ))
       
       
       )


