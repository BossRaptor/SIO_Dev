function moyenne() {
    var n1 = prompt("Donner la première note :");
    var n2 = prompt("Donner la deuxième note :");
    var n3 = prompt("Donner la troisième note :");
    
    var somme = Number(n1) + Number(n2) + Number(n3);
    var moyenne = somme / 3;

    document.write("Voici la somme des notes : " + somme + "<br>");
    var moyenne = somme / 3;

    document.write("Voici la moyenne des notes : " + moyenne + "<br>");

    if (moyenne >= 10) {
        document.write("Vous etes admis !");
    }
    else {
        document.write("Vous etes recalé !");
    }

    document.write("<br><br><a href='tp11.html'>Retour</a>");
}

function age() {
    var age = prompt("Quel est votre age ?");
    if (age >= 18) {
        document.write("Vous etes majeur !");
        document.bgColor = "green";
    }
    else {
        document.write("Vous etes mineur !");
        document.bgColor = "red";
    }

    document.write("<br><br><a href='tp11.html'>Retour</a>");

}

function nom() {
    let nom = prompt("Quel est votre nom ?");
    let prenom = prompt("Quel est votre prénom ?");
    document.write('<div style="margin:auto; width:300px; border:2px solid blue;">');
    document.write("Bonjour " + prenom + " " + nom);
    document.write("</div>");
        document.write("<br><br><a href='tp11.html'>Retour</a>");

}

function couleur() {
    let couleur = prompt("Donner une couleur")
    if (couleur == "blanc" || couleur == "white") {
        document.body.style.backgroundColor = "white";
    }
    else if (couleur == "rouge" || couleur == "red") {
        document.body.style.backgroundColor = "red";
    }
    else if (couleur == "jaune" || couleur == "yellow") {
        document.body.style.backgroundColor = "yellow";
    }
    else if (couleur == "noir" || couleur == "black") {
        document.body.style.backgroundColor = "black";
    }
    else if (couleur == "gris" || couleur == "gray" || couleur == "grey") {
        document.body.style.backgroundColor = "gray";
    }
    else if (couleur == "bleu" || couleur == "blue") {
        document.body.style.backgroundColor = "blue";
    }
    else if (couleur == "vert" || couleur == "green") {
        document.body.style.backgroundColor = "green";
    }
    else if (couleur == "rose" || couleur == "pink") {
        document.body.style.backgroundColor = "pink";
    }
    else {
        document.write("Couleur non reconnue");
    }
}