//API11A    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//* On utilise IEBGENER pour faire une copie
//STEP1     EXEC PGM=IEBGENER
//* SYSUT1 => Données en entrées (récupération de fichier)
//SYSUT1    DD DSN=API11.COB.ASSURES,DISP=SHR
//* SYSUT2 => Données en sorties (création d'un fichier)
//SYSUT2    DD DSN=API11.ACTIF.ASSURES2,DISP=(NEW,CATLG,DELETE),
//           SPACE=(TRK,(1,1,0)),UNIT=SYSDA
//*
//SYSPRINT  DD DUMMY
//SYSIN     DD DUMMY