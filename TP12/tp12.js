
function ex1_moyenne() {
	var n1 = prompt("Donner la première note :");
    var n2 = prompt("Donner la deuxième note :");
    var n3 = prompt("Donner la troisième note :");
    
    var somme = Number(n1) + Number(n2) + Number(n3);
    var moyenne = somme / 3;

    document.write("Voici la moyenne des notes : " + moyenne + "<br>");

    if (moyenne < 10) {
        document.write("Vous etes recalé.");
    }
    else if (moyenne >= 10 && moyenne < 12) {
        document.write("Vous etes admis avec mention passable.");
    }
    else if (moyenne >= 12 && moyenne < 14) {
        document.write("Vous etes admis avec mention bien.");
    }
    else {
        document.write("Vous etes admis avec mention très bien!");
    }

    document.write("<br><br><a href='tp12.html'>Retour</a>");
}

function ex2_temperature() {
	var t = prompt("Température (°C) :");
    if (t < 10) {
        document.write("Froid");
    }
    else if (t >= 10 && t < 25) {
        document.write("Normal");
    }
    else if (t >= 25) {
        document.write("Chaud");
    }
    else {
        document.write("Entrée invalide.");
    }

    document.write("<br><br><a href='tp12.html'>Retour</a>");
}

function ex3_comparaison() {
	var a = prompt("Premier nombre :"));
	var b = prompt("Deuxième nombre :"));
	
    if (a > b) {
        document.write("Le plus grand est : " + a + "<br>");
        document.write("Le plus petit est : " + b + "<br>");
    }
    else if (a < b) {
        document.write("Le plus grand est : " + b + "<br>");
        document.write("Le plus petit est : " + a + "<br>");
    }
    else if (a == b) {
        document.write("Les deux nombres sont égaux : " + a + "<br>");
    }
    else {
        document.write("Entrée invalide.");
    }
}
