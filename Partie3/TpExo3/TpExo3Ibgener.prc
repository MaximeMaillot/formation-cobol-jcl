//API11A    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//INSMPROC   PROC
//STEP1     EXEC PGM=IEBGENER
//SYSUT1    DD DSN=API11.COB.ASSURES,DISP=SHR
//SYSUT2    DD DSN=API11.ACTIF.ASSURES2,DISP=(NEW,CATLG,DELETE),
//           SPACE=(TRK,(1,1,0),RLSE),UNIT=SYSDA
//SYSPRINT  DD DUMMY
//SYSIN     DD DUMMY
//* On change le SYSUT1 et le SYSUT2 par les éléments de notre choix
//STEP1     EXEC INSMPROC
//SYSUT1    DD DSN=API11.COB.MVT
//SYSUT2    DD SYSOUT=*