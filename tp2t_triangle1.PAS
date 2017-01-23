// Algorithme : Triangle1
// BUT : Afficher un triangle avec des X en bordure et des O à l'intérieur du triangle.
// ENTREES : Taille du triangle 
// SORTIES : Triangle 

{
VAR
	x,y:ENTIER
	taille:ENTIER

DEBUT
	REPETER 
		ECRIRE("Conception d''un triangle") 
		ECRIRE("Veuillez entrer la taille du triangle")
		LIRE(taille) 	//Lit la taille du triangle
		ECRIRE("") 		//Fait un saut de ligne
	JUSQU'A (taille>0) 	//Tant que l'utilisateur n'entre pas une taille supérieure à 0, le programme n'affichera pas le triangle.
	
	POUR x DE 1 A (taille) FAIRE 					//Lignes
		POUR y DE 1 A x FAIRE 						//Colonnes => Va de y à x pour ne pas dessiner un carré
			SI (y=1) OU (y=x) OU (x=taille) ALORS 	//Lorsque que y=1(bord gauche) ou y=x ou x=taille(dernière ligne) alors le programme affiche un "X" 
				ECRIRE("X")	
			SINON
				ECRIRE("O") 						// Sinon il affiche un "O"
			FINSI
		FINPOUR
		ECRIRE("")
	FINPOUR
FIN
}

//Si je rentre le nombre 10, il va entrer dans la boucle REPEAT et en ressortir pour dessiner mon triangle.

Program triangle1;

uses crt;

VAR
	x,y:integer;
	taille:integer;

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
			FOR y:=1 TO x DO //Colonnes
				BEGIN
					IF (y=1) OR (y=x) OR (x=taille) THEN
						BEGIN
							write('X');
						END
					ELSE
						BEGIN
							write('O');
						END;
				END;
			writeln;
		END;
	readln;
END.
