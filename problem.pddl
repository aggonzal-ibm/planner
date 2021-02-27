(define (problem moveAmbulance)
   (:domain ambulance)
   (:objects
         amb1  - ambulance
         l1_hospital l2 l3 l4 - location
         p1 p2 - pacient 
      
        )
    (:init
        (outAmb p1)
        (plocation p1 l4)
        (outAmb p2)
        (plocation p2 l3)
        
        (ambstate amb1)
        (amblocation amb1   l1_hospital)
        
        (road   l1_hospital l2)
        (road l2 l4)
        (road l4 l3)
        (road l3 l4)
        (road l4 l2)
        (road l2 l1_hospital)
       
        )
    (:goal
      (and
        (outAmb p1)
        (plocation p1  l1_hospital)
        (outAmb p2)
        (plocation p2 l1_hospital)
       ))
       
       
       )

