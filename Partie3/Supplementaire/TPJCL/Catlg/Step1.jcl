//STEP1P    PROC
//STEP1     EXEC PGM=SORT
//SORTIN    DD DSN=API11.COB.ASSURES,DISP=SHR
//SORTOUT   DD DSN=&&SORTFILE,DISP=(NEW,PASS),
//           SPACE=(TRK,(1,1,0),RLSE),UNIT=SYSDA
//SYSOUT    DD DUMMY
//SYSIN     DD DUMMY
//          PEND