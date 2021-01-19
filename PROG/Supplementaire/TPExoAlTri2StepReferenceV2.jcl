//API11ALB  JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//STEP1     EXEC PGM=SORT
//SORTIN    DD DSN=API11.COB.ASSURES,DISP=SHR
//* On passe les données via la création d'un fichier temporaire
//* On met une réference &&NOMFICHIER dans le DNS
//SORTOUT   DD DSN=&&MAX,DISP=(NEW,PASS),
//           SPACE=(TRK,(1,1,0),RLSE),UNIT=SYSDA
//*
//SYSOUT    DD DUMMY
//SYSIN     DD *
  SORT FIELDS=(1,6,CH,A)
/*
//STEP2     EXEC PGM=IEBGENER
//* *.STEP1.SORTOUT va chercher la référence du DNS de SORTOUT
//SYSUT1    DD DSN=*.STEP1.SORTOUT,DISP=(OLD,DELETE)
//SYSUT2    DD SYSOUT=*
//*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DUMMY