//API11B    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,10)
//INSMPROC PROC
//STEP1     EXEC PGM=IEBGENER
//SYSUT1    DD DSN=API11.COB.ASSURES,DISP=SHR
//SYSUT2    DD DSN=API11.SOURCE.JCL(TEST1),DISP=SHR
//SYSPRINT  DD DUMMY
//SYSIN     DD DUMMY
//*
//STEP2     EXEC PGM=IEBGENER
//SYSUT1    DD DSN=API11.COB.ASSURES,DISP=SHR
//SYSUT2    DD DSN=API11.SOURCE.JCL(TEST2),DISP=SHR
//SYSPRINT  DD DUMMY
//SYSIN     DD DUMMY
//         PEND
//STEP1     EXEC INSMPROC
//STEP1.SYSUT1 DD DSN=API11.COB.MVT,DISP=SHR
//STEP1.SYSUT1 DD DSN=API11.COB.ETUDIANT,DISP=SHR
//STEP2.SYSUT2 DD SYSOUT=*
//STEP2.SYSUT2 DD SYSOUT=*