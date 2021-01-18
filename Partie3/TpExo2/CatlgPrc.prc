//PROC1      EXEC PGM=SORT
//SORTIN     DD DSN=API11.COB.ASSURES,DISP=SHR
//SORTOUT    DD SYSOUT=*
//SYSOUT     DD DUMMY
//* On ne peut pas faire appel à un contenu INSTREAM dans une procédure
//SYSIN      DD DUMMY
