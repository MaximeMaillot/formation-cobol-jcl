//API11A    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//* On utilise IEBGENER pour faire une copie
//INSMPROC   PROC
//STEP1     EXEC PGM=IEBGENER
//* SYSUT1 => Données en entrées (récupération de fichier)
//SYSUT1    DD DSN=&INPUT,DISP=SHR
//* SYSUT2 => Données en sorties (création d'un fichier)
//SYSUT2    DD DSN=&OUTPUT,DISP=(NEW,CATLG,DELETE),
//           SPACE=(TRK,(1,1,0),RLSE),UNIT=SYSDA
//*
//SYSPRINT  DD DUMMY
//SYSIN     DD DUMMY
//STEP1     EXEC INSMPROC,INPUT='API11.COB.ASSURES',
//           OUTPUT='API11.ACTIF.ASSUREPR'