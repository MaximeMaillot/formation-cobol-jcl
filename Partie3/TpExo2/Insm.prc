//API11TRI  JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,10)
//INSMPROC  PROC
//*
//PROC1      EXEC PGM=SORT
//SORTIN     DD DSN=API11.COB.ASSURES,DISP=SHR
//SORTOUT    DD DSN=API11.ACTIF.ASSUREIS,DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(1,1,0),RLSE),UNIT=SYSDA
//SYSOUT     DD DUMMY
//SYSIN      DD DUMMY
//          PEND
//*
//STEP1     EXEC INSMPROC
//SORTOUT   DD SYSOUT=*
//SYSIN     DD *
 SORT FIELDS=(1,6,CH,A)
/*