// Algorithme : Triangle2
// BUT : Afficher un triangle avec des chiffres pour chaque ligne
// ENTREES : Taille du triangle 
// SORTIES : Triangle 

{
VAR
	x,y:ENTIER
	taille:ENTIER
	cpt:ENTIER

DEBUT
	REPETER 
		ECRIRE("Conception d''un triangle") 
		ECRIRE("Veuillez entrer la taille du triangle")
		LIRE(taille) 	//Lit la taille du triangle
		ECRIRE("") 		//Fait un saut de ligne
	JUSQU'A (taille>0) 	//Tant que l'utilisateur n'entre pas une taille supérieure à 0, le programme n'affichera pas le triangle.
	
	POUR x DE 1 A (taille) FAIRE 					//Lignes
		POUR y DE taille A x PAS de -1 FAIRE 		//Colonnes => Va de y à x mais dans l'ordre décroissant pour retourner le triangle
			SI cpt>9 ALORS
				ECRIRE(cpt&" ")						//Initialisation automatique du cpt à 0.
			SINON
				ECRIRE(cpt&"  ")
			FINSI							
		FINPOUR
		cpt<-cpt+1 									//Augmente le compteur de 1 pour chaque passage dans la 1ère boucle.
		ECRIRE("")
	FINPOUR
FIN
}

//Si je rentre le nombre 10, il va entrer dans la boucle REPEAT et en ressortir pour dessiner mon triangle.

Program triangle2;

uses crt;

VAR
	x,y:integer;
	taille:integer;
	cpt:integer;

BEGIN
	REPEAT
		BEGIN
			clrscr;
			writeln('Conception d''un triangle');
			writeln('Veuillez entrer la taille du triangle');
			readln(taille);
			writeln;
		END;
	UNTIL (taille>0);
	
	FOR x:=1 TO (taille) DO //Lignes
		BEGIN
			FOR y:=taille DOWNTO x DO //Colonnes
				BEGIN
					IF cpt>9 THEN
						write(cpt,' ')
					ELSE
						write(cpt,'  ');
				END;
			cpt:=cpt+1;
			writeln;
		END;
	readln;
END.