
function ex1_moyenne() {
    var n1 = Number(prompt("Donner la première note (sur 20) :"));
    var n2 = Number(prompt("Donner la deuxième note (sur 20) :"));
    var n3 = Number(prompt("Donner la troisième note (sur 20) :"));
    
    // Vérifier que les notes sont valides (entre 0 et 20)
    if (n1 < 0 || n1 > 20 || n2 < 0 || n2 > 20 || n3 < 0 || n3 > 20) {
        document.write("Erreur : Les notes doivent être des nombres entre 0 et 20.<br>");
        document.write("<br> <button onclick=\"ex1_moyenne()\">Refaire</button>");
        document.write("<br><br><a href='tp12.html'>Retour</a>");
        return;
    }
    
    var moyenne = (n1 + n2 + n3) / 3;

    document.write("<br>" + "Voici la moyenne des notes : " + moyenne.toFixed(2) + "<br>");

    if (moyenne < 10) {
        document.write("Vous êtes recalé.");
    }
    else if (moyenne >= 10 && moyenne < 12) {
        document.write("Vous êtes admis avec mention passable.");
    }
    else if (moyenne >= 12 && moyenne < 14) {
        document.write("Vous êtes admis avec mention bien.");
    }
    else {
        document.write("Vous êtes admis avec mention très bien!");
    }

    document.write("<br><br><a href='tp12.html'>Retour</a>");
}

function ex2_temperature() {
    var t = Number(prompt("Température (°C) :"));
    
    if (t < 10 && t >= 0) {
        document.write("Froid");
        document.bgColor = "blue";
    }
    else if (t < 0) {
        document.write("Tres froid");
        document.bgColor = "lightblue";
    }
    else if (t >= 10 && t <= 25) {
        document.write("Normal");
        document.bgColor = "green";
    }
    else if (t > 25 && t <= 35) {
        document.write("Chaud");
        document.bgColor = "orange";
    }
    else if (t > 35) {
        document.write("Très chaud");
        document.bgColor = "red";
    }

    document.write("<br><br><a href='tp12.html'>Retour</a>");
}

function ex3_comparaison() {
    var a = Number(prompt("Premier nombre :"));
    var b = Number(prompt("Deuxième nombre :"));
    
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
    
    document.write("<br><br><a href='tp12.html'>Retour</a>");
}
