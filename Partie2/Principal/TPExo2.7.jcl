//API11G    JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,1)
//STEP1     EXEC PGM=IEBGENER
//* On envoie des données à l'entrée
//SYSUT1    DD *
COUCOU
/*
//SYSUT2    DD SYSOUT=*
//* On envoie le rapport du job vers TEST3
//SYSPRINT  DD DSN=API11.SOURCE.JCL(TEST3),DISP=SHR
//SYSIN     DD DUMMY