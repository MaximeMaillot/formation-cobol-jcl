//API11ALB  JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//STEP1     EXEC PGM=SORT
//SORTIN    DD DSN=API11.COB.ASSURES,DISP=SHR
//* On créer un fichier temp &&SORTFILE qu'on PASS
//SORTOUT   DD DSN=&&SORTFILE,DISP=(NEW,PASS),
//           SPACE=(TRK,(1,1,0)),UNIT=SYSDA
//*
//SYSOUT    DD DUMMY
//SYSIN     DD *
  SORT FIELDS=(1,6,CH,A)
/*
//STEP2     EXEC PGM=IEBGENER
//* On récupère le fichier temporaire
//SYSUT1    DD DSN=&&SORTFILE,DISP=(OLD,DELETE)
//SYSUT2    DD SYSOUT=*
//*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DUMMY