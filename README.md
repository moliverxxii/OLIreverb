projet Xcode. le projet inclue AudioFile.h d'Adam Stark sous license GNU (General Public License).

le fichier "sh A108L RI.wav" est la reponse impulsionnelle de la piece qui est simulee. le code n'a pas d'interface graphique. le code d'interet se situe dans le dossier source fichier "processor.cpp". remarquez que la ligne :
        std::string path = "/Users/moliver/Documents/Code/OLIreverb/sh A108L RI.wav";
doit etre modifiee afin d'avoir la bonne adresse a tout moment dans votre implementation.

encore une fois c'est un projet etudiant realise pendant un semestre. l'algorithme de convulotion est le plus naif qui soit et ne comporte pas de transormee de Fourier rapide.
