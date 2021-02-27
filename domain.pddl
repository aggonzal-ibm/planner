(define (domain ambulance)
  (:requirements :strips :equality :typing :conditional-effects)

  (:types  ambulance location pacient )


  (:predicates
    (ambstate ?a - ambulance)
    (amblocation ?a - ambulance ?location - location)
    (inAmb     ?p - pacient ?a - ambulance)
    (plocation ?p - pacient ?location1 - location)
    (outAmb    ?p - pacient)
    (road ?location1 - location ?location2 - location)
 
  )
  (:action PacientOut
       :parameters ( ?a - ambulance  ?location - location ?p - pacient)
       :precondition (and 
            (ambstate ?a)
            (amblocation ?a ?location)
            (inAmb ?p ?a)
            (plocation ?p ?location)
       )
       :effect (and 
            (not (inAmb ?p ?a))
            (outAmb ?p)
        )
    )
  (:action PacientIn
       :parameters ( ?a - ambulance ?location - location ?p - pacient)
       :precondition (and 
            (ambstate ?a)
            (amblocation ?a ?location)
            (outAmb ?p)
            (plocation ?p ?location)
            
       )
       :effect (and 
            (not (outAmb ?p))
            (inAmb ?p ?a)
        )
    )
  (:action moveAmbulanceEmpty
       :parameters ( ?a - ambulance ?locationa - location  ?locationb - location )
       :precondition (and 
            (ambstate ?a)
            (amblocation ?a ?locationa)
            (road ?locationa ?locationb)
            
           
       )
       :effect (and 
            (not (amblocation ?a ?locationa))
            (amblocation ?a ?locationb)
            (road ?locationa ?locationb)
        
        )
    )


      (:action moveAmbulanceWithPacient
       :parameters ( ?a - ambulance ?locationa - location  ?locationb - location ?p - pacient)
       :precondition (and 
            (ambstate ?a)
            (amblocation ?a ?locationa)
            (inAmb ?p ?a)
            (plocation ?p ?locationa)
            (road ?locationa ?locationb)

           
       )
       :effect (and 
            (not (amblocation ?a ?locationa))
            (not (plocation ?p ?locationa))
            (amblocation ?a ?locationb)
            (road ?locationa ?locationb)
            (plocation ?p ?locationb)
        )
    )

  )