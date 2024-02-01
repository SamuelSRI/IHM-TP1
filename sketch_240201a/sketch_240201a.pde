int state;
String[] noms; // Tableau pour stocker les noms
PImage img; // Déclaration de la variable pour l'image
void setup() {
  size(720, 900);
  background(220, 220, 231); // Couleur bleu ciel

  // Initialisation du tableau de noms (peut être rempli plus tard)
  noms = new String[]{"Puck-Man", "Space Outvider", "Monkey King", "Marius Brother", "The History of Laink", "Doomed", "Wood stick Liquid", "Solidaire"};
  
}


void draw() {
  int x = 50; // Position horizontale du tableau
  int y = 50; // Position verticale du tableau
  int largeur = width - 2 * x; // Largeur du tableau
  int hauteur = height / 2 - 2 * y; // Hauteur du tableau
  int rectHauteur = hauteur / noms.length; // Hauteur de chaque rectangle

  // Affichage du titre
  fill(0); // Couleur noire pour le texte du titre
  textAlign(CENTER, CENTER);
  textSize(24);
  text("Mini-Jeux", width / 2, y - 18); // Titre 2 pixels au-dessus du tableau
  fill(255);
  // Affichage des rectangles encadrant chaque nom
  for (int i = 0; i < noms.length; i++) {
    rect(x, y + i * rectHauteur, largeur, rectHauteur); // Rectangle noir
    fill(255); // Réinitialiser la couleur pour le texte
    textAlign(CENTER, CENTER);
    text(noms[i], x + largeur / 2, y + i * rectHauteur + rectHauteur / 2);
  }
  fill(255); // Couleur de remplissage du rectangle (rouge)
  rect(50, 410, 300, 200); // Rectangle aux coordonnées (50, 50) et dimensions 300x200
  
  fill(0); // Couleur blanche pour le texte des noms
  textAlign(CENTER, CENTER);
  textSize(20);
  
  // Affichage des noms à l'intérieur des rectangles
  for (int i = 0; i < noms.length; i++) {
    text(noms[i], x + largeur / 2, y + i * rectHauteur + rectHauteur / 2);
  }
  
  switch (state) {
    case 1:
      img = loadImage("1.jpg"); // Charger votre image (remplacez "nom_de_votre_image.jpg" par le chemin de votre image)
      image(img, 60, 420, 280, 180); // Image aux coordonnées (60, 60) et dimensions 280x180
      break;
    case 2:
      img = loadImage("2.png"); // Charger votre image (remplacez "nom_de_votre_image.jpg" par le chemin de votre image)
      image(img, 60, 420, 280, 180); // Image aux coordonnées (60, 60) et dimensions 280x180
      break;
    case 3:
      img = loadImage("3.jpg"); // Charger votre image (remplacez "nom_de_votre_image.jpg" par le chemin de votre image)
      image(img, 60, 420, 280, 180); // Image aux coordonnées (60, 60) et dimensions 280x180
      break;
    case 4:
      img = loadImage("4.jpg"); // Charger votre image (remplacez "nom_de_votre_image.jpg" par le chemin de votre image)
      image(img, 60, 420, 280, 180); // Image aux coordonnées (60, 60) et dimensions 280x180
      break;
    case 5:
      img = loadImage("5.jpg"); // Charger votre image (remplacez "nom_de_votre_image.jpg" par le chemin de votre image)
      image(img, 60, 420, 280, 180); // Image aux coordonnées (60, 60) et dimensions 280x180
      break;
    case 6:
      img = loadImage("6.jpg"); // Charger votre image (remplacez "nom_de_votre_image.jpg" par le chemin de votre image)
      image(img, 60, 420, 280, 180); // Image aux coordonnées (60, 60) et dimensions 280x180
      break;
    case 7:
      img = loadImage("7.jpg"); // Charger votre image (remplacez "nom_de_votre_image.jpg" par le chemin de votre image)
      image(img, 60, 420, 280, 180); // Image aux coordonnées (60, 60) et dimensions 280x180
      break;
    case 8:
      img = loadImage("8.jpg"); // Charger votre image (remplacez "nom_de_votre_image.jpg" par le chemin de votre image)
      image(img, 60, 420, 280, 180); // Image aux coordonnées (60, 60) et dimensions 280x180
      break;
    default:
      
  }

}

void mouseClicked() {
  int x = 50; // Position horizontale du tableau
  int y = 50; // Position verticale du tableau
  int largeur = width - 2 * x; // Largeur du tableau
  int hauteur = height / 2 - 2 * y; // Hauteur du tableau
  int rectHauteur = hauteur / noms.length; // Hauteur de chaque rectangle
  // Vérifier si la souris est cliquée dans une des cases du tableau
  for (int i = 0; i < noms.length; i++) {
    if (mouseX > x && mouseX < x + largeur && mouseY > y + i * rectHauteur && mouseY < y + (i + 1) * rectHauteur) {
      // La case a été cliquée
      println("Case " + (i + 1) + " cliquée. Nom: " + noms[i]);
      state = (i+1);
      // Ajoutez ici le code que vous souhaitez exécuter lorsqu'une case est cliquée
    }
  }
}
