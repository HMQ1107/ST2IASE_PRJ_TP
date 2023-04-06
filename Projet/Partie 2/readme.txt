1.Dans Arduino IDE, installer le package Harvard_TInyMLx
2.Lancer l'exemple test_camera.ino
3.Dans la console, selectionner 9600 bauds et Carriage Return à la place de new line

- Pour avoir une image:
4.Dans la console, écrire single puis capture
Un tableau d'octets est affiché après quelques secondes
5.Copier ce tableau dans OV7675_Image_Viewer.ipynb (tableau HEXADECIMAL_BYTES)
6.Lancer le script

- Pour avoir le stream de la caméra:
4.Installer le logiciel Processus
5.Dans l'environnement Processus, ouvrir le ficher CameraVisualizerRawBytes.pde (qui se trouve dans \Documents\Arduino\libraries\Harvard_TinyMLx\extras\CameraVisualizerRawBytes)
6.Dans la console d'Arduino IDE, taper live
Après 5 secondes, la caméra envoie ce qu'elle voit toutes les secondes
7.Fermer le moniteur série
8.Dans Processus, lancer CameraVisualizerRawBytes.pde
9.Une fenêtre est censé s'ouvrir. Elle contient l'image
Sur Windows, l'image affichée ne ressemble à la réalité. Elle est floutée. C'est un bug qui apparaît sur Windows et qui est connu.
