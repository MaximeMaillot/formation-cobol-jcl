//API11F    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//STEP1     EXEC PGM=IEBGENER
//SYSUT1    DD *
FIX THAT SHIT
/*
//* PDS a fixé avec le bon format
//SYSUT2    DD DSN=API11.SOURCE.JCL(FIXIT),DISP=SHR,
//           DCB=(LRECL=80,BLKSIZE=27920,RECFM=FB)
//*
//SYSPRINT  DD SYSOUT=*
//SYSIN     DD DUMMY