//API11TP JOB 'API11',MSGCLASS=H,NOTIFY=&SYSUID,TIME=(,10)              
//* Utilisation du Programme IEFBR14 pour supprimer des fichiers
//STEP1 EXEC PGM=IEFBR14
//* DNS = fichier à traiter
//* DISP=Action à faire => Disp=(ETAT,FIN NORMALE,FIN ANORMALE)
//SEQ1D  DD  DSN=API11.ACTIF.SEQ1,
//           DISP=(SHR,DELETE,DELETE) Etat Share, delete le
//PDS1D  DD  DSN=API11.ACTIF.PDS1,    
//            DISP=(SHR,DELETE,DELETE)
//* On créer un fichier séquentiel et un PDS
//STEP2 EXEC PGM=IEFBR14
//* SPACE=(TYPE,(PRIMAIRE,SECONDAIRE,DIRECTORYBLOCK))
//SEQ1C  DD  DSN=API11.ACTIF.SEQ1, 
//           DISP=(NEW,CATLG,DELETE), Etat New, catalogue le
//           SPACE=(TRK,(1,1,0)),UNIT=3390, 0 => Sequentiel
//           DCB=(LRECL=80,BLKSIZE=800,RECFM=FB)
//PDS1C  DD  DSN=API11.ACTIF.PDS1,
//           DISP=(NEW,CATLG,DELETE),
//           SPACE=(TRK,(1,1,1)),UNIT=SYSDA, 1 => PDS
//           DCB=(LRECL=80,BLKSIZE=800,RECFM=FB)