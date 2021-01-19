//API11F    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,10)
//* On utilise PROC pour indiquer le début d'une procédure
//INSMPROC   PROC
//PROC1      EXEC PGM=IEBGENER
//SYSUT1     DD DSN=API11.SOURCE.JCL(TEST2),DISP=SHR
//SYSUT2     DD SYSOUT=*
//SYSPRINT   DD SYSOUT=*
//SYSIN      DD DUMMY
//* On indique PEND pour indiquer la fin d'une procédure
//          PEND
//* On l'éxecute en appellant le nom de la PROC
//STEP1     EXEC INSMPROC