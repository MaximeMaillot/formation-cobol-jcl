//API11E    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//STEP1     EXEC PGM=IEBGENER
//* Deux membres, donc on utilise des parenthèses pour les deux
//SYSUT1    DD DSN=API11.SOURCE.JCL(TEST1),DISP=SHR
//SYSUT2    DD DSN=API11.SOURCE.JCL(TEST2),DISP=SHR,
//           SPACE=(TRK,(1,1,0),RLSE),UNIT=SYSDA
//*
//SYSPRINT  DD DUMMY
//SYSIN     DD DUMMY