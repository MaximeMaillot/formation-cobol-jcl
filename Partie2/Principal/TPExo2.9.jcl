//API11TRI  JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//STEP1     EXEC PGM=SORT
//SORTIN    DD DSN=API11.COB.ASSURES,DISP=SHR
//SORTOUT   DD DSN=API11.ACTIF.ASSUREST,DISP=(NEW,CATLG,DELETE),
//           SPACE=(TRK,(1,1,0),RLSE),UNIT=SYSDA
//*
//SYSOUT    DD DUMMY
//* On tri : FIELDS(Pos,NbreChar,Type,Ordre)
//* Position du 1er char à trier
//* Nombre de char suivant la position
//* Type (CH pour char, BI pour binaire)
//* Ordre (A pour ascendant, D pour descendant) 
//SYSIN     DD *
  SORT FIELDS=(1,6,CH,A)
/*