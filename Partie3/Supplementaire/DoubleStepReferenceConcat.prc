//API11B    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,10)
//* ------------------------------------------------------------------
//INSMPROC PROC
//STEP1     EXEC PGM=SORT
//SORTIN    DD DSN=API11.COB.ASSURES,DISP=SHR
//SORTOUT   DD DSN=&&SORTFILE,DISP=(NEW,PASS),
//           SPACE=(TRK,(1,1,0),RLSE),UNIT=SYSDA
//SYSOUT    DD DUMMY
//SYSIN     DD DUMMY
//*
//SYSUT1    DD DSN=*.STEP1.SORTOUT,DISP=(OLD,DELETE)
//SYSUT2    DD SYSOUT=*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DUMMY
//          PEND
//* ------------------------------------------------------------------
//PROC1     EXEC INSMPROC
//STEP1.SORTIN DD DSN=API11.COB.MVT,DISP=SHR
//STEP1.SYSIN DD *
  SORT FIELDS=(1,6,CH,A)
/*
//STEP2.SYSUT1 DD
//             DD *
 AJOUTEZ A LA FIN DU SYSUT1
/*