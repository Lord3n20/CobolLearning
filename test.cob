       IDEntIfICAtIOn DIvISiON.
       ProGram-Id. CobolRocks.
       DaTa DiVisIon.
       WorKinG-sTorAge SectIoN.
       01 zahl PiC X(6) vALuE "5".
       01 eingabe PiC X(6) valuE "1".
       01 name pIc X(20) vALue "Name".
       pRocEduRe dIvisIon.
       dIsPlAy "Gib deinen Namen ein:".
       accept name.    
       peRfOrm UntIl zahl = eingabe
       disPLAY "Rate die Zahl:"
       acCEpt eingabe
       iF zahl < eingabe tHeN
       dIsPlAy "Kleiner"
       eLse
       DIsPlaY "Größer"
       EnD-IF
       eNd-pErForM
       DISPLAY name" Der Profi"
       STOP RUN.
