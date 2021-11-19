       IDenTiFicaTion dIviSIon.
       prOgrAM-iD. CobolRocks.
       DatA DivIsion.
       WorKinG-StoraGe SecTioN.
       01 feld1 pIC x(1) value ".".
       01 feld2 PIC x(1) value ".".
       01 feld3 PIc x(1) value ".".
       01 feld4 PIC x(1) value ".".
       01 feld5 pic x(1) value ".".
       01 feld6 pic x(1) value ".".
       01 feld7 pic x(1) value ".".
       01 feld8 pic x(1) value ".".
       01 feld9 pic x(1) value ".".
       01 feldP pic x(1) value "0".
       ProceduRE DiVISION.
           displAY feld1 feld2 feld3.
           display feld4 feld5 feld6.
           display feld7 feld8 feld9.
           perform until feldP = "1"
           accept feldP.
           if feldP = "1" then
                   feld1 = "X"
           end-if
           if feldP = 2 then
                   feld2 is "X"
           end-if
           if feldP = 3 then
                   feld3 is "X"
           end-if
           if feldp = 4 then
                   feld4 is "x"
           end-if
           if feldp = 5 then
                   feld5 = "x"
           end-if
           if feldp = 6 then
                   feld6 value "x"
           end-if
            if feldP = 7 then
                   feld7 = "X"
           end-if
           if feldP = 8 then
                   feld7 = "X"
           end-if
           if feldP = 9 then
                   feld9 is "X"
           end-if
           end-perform
           
           STOP RUN.
