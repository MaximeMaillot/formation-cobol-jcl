//API11TRI  JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,10)
//INSMPROC  PROC
//*
//PROC1      EXEC PGM=SORT
//SORTIN     DD DSN=API11.COB.ASSURES,DISP=SHR
//SORTOUT    DD SYSOUT=*
//SYSOUT     DD DUMMY
//SYSIN      DD DUMMY
//          PEND
//*
//STEP1     EXEC INSMPROC
//* On indique la valeur de SYSIN a utilisé pour la procédure
//SYSIN     DD *
 SORT FIELDS=(1,6,CH,A)
/*