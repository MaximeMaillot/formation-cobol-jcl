//API11TP JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(1,1)               00010000
//*          RESTART=STEP2
//*
//STEP1 EXEC PGM=IEFBR14
//SEQ1D  DD  DSN=API11.ACTIF.SEQ1,
//           DISP=(SHR,DELETE,DELETE)
//PDS1D  DD  DSN=API11.ACTIF.PDS1,
//           DISP=(SHR,DELETE,DELETE)
//*
//STEP2  EXEC PGM=IEFBR14
//SEQ1C  DD  DSN=API11.ACTIF.SEQ1,
//           DISP=(NEW,CATLG,DELETE),
//           SPACE=(TRK,(1,1,0)),UNIT=3390,
//           DCB=(LRECL=80,BLKSIZE=800,RECFM=FB)
//PDS1C  DD  DSN=API11.ACTIF.PDS1,
//           DISP=(NEW,CATLG,DELETE),
//           SPACE=(TRK,(1,1,1)),UNIT=SYSDA,
//           DCB=(LRECL=80,BLKSIZE=800,RECFM=FB)