# formation-cobol-jcl

## Partie 2 fichier Supplementaire

### Réparer un PDS

[FixPDS.jcl](https://github.com/MaximeMaillot/formation-cobol-jcl/blob/main/Partie2/Supplementaire/FixPDS.jcl) permet de réparer un PDS en envoyant un fichier avec le bon format en tant que membre de ce PDS (nottament à cause de la question 7)

### Plusieurs critères de tri

Enoncé similaire à la question 9, mais on utilise plusieurs critère de tri.

ATTENTION : Utiliser des critères de tri non unique (Code postal, ou la dernière colonne)

Correction : [TPExoDoubleTri.jcl](https://github.com/MaximeMaillot/formation-cobol-jcl/blob/main/Partie2/Supplementaire/TpExoDoubleTri.jcl)

### Transmettre des datas entre deux PGM

Utiliser un PGM=SORT pour trier un APIN.COB.ASSURES et afficher dans le SYSPRINT d'un PGM=IEBGENER

Correction avec création de fichier : [TpExo2Tri2Step.jcl](https://github.com/MaximeMaillot/formation-cobol-jcl/blob/main/Partie2/Supplementaire/TPExoTri2Step.jcl)

Correction avec utilisation d'un fichier temporaire : [TPExoTri2StepReference.jcl](https://github.com/MaximeMaillot/formation-cobol-jcl/blob/main/Partie2/Supplementaire/TPExoTri2StepReference.jcl) OU [TPExoAlTri2StepReferenceV2.Jcl](https://github.com/MaximeMaillot/formation-cobol-jcl/blob/main/Partie2/Supplementaire/TPExoAlTri2StepReferenceV2.jcl)

### Concatener des fichiers

Appliquer un tri sur une concaténation de deux fichiers : APIN.COB.ASSURES et APIN.COB.MVT

Correction : [TPConcat.jcl](https://github.com/MaximeMaillot/formation-cobol-jcl/blob/main/Partie2/Supplementaire/TPConcat.jcl)
