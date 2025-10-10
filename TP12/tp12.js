
function ex1_moyenne() {
    var n1 = Number(prompt("Donner la première note (sur 20) :"));
    var n2 = Number(prompt("Donner la deuxième note (sur 20) :"));
    var n3 = Number(prompt("Donner la troisième note (sur 20) :"));

    var iframe = document.getElementById("resultatjs");
    iframe.contentDocument.open();
    iframe.contentDocument.write("<link rel='stylesheet' href='tp12.css'>");

    // Vérifier que les notes sont valides (entre 0 et 20)
    if (n1 < 0 || n1 > 20 || n2 < 0 || n2 > 20 || n3 < 0 || n3 > 20) {
        iframe.contentDocument.write("Erreur : Les notes doivent être des nombres entre 0 et 20.<br>");
        iframe.contentDocument.write("<br> <button onclick=\"parent.ex1_moyenne()\">Refaire</button>");
        iframe.contentDocument.write("<br><br><a href='tp12.html'>Retour</a>");
        iframe.contentDocument.close();
        return;
    }
    
    var moyenne = (n1 + n2 + n3) / 3;

    iframe.contentDocument.write("<br>Voici la moyenne des notes : " + moyenne.toFixed(2) + "<br>");

    if (moyenne < 10) {
    iframe.contentDocument.write("Vous êtes recalé.");
    }
    else if (moyenne >= 10 && moyenne < 12) {
    iframe.contentDocument.write("Vous êtes admis avec mention passable.");
    }
    else if (moyenne >= 12 && moyenne < 14) {
    iframe.contentDocument.write("Vous êtes admis avec mention bien.");
    }
    else {
        iframe.contentDocument.write("Vous êtes admis avec mention très bien!");
    }

    iframe.contentDocument.write("<br> <button onclick=\"parent.ex1_moyenne()\">Refaire</button>");
    iframe.contentDocument.close();
}

function ex2_temperature() {
    var t = Number(prompt("Température (°C) :"));
    var iframe = document.getElementById("resultatjs");
    iframe.contentDocument.open();
    iframe.contentDocument.write("<link rel='stylesheet' href='tp12.css'>");

    if (t < 10 && t >= 0) {
        iframe.contentDocument.write("<br>Froid");
        iframe.bgcolor = "lightblue";
    }
    else if (t < 0) {
        iframe.contentDocument.write("<br>Tres froid");
        iframe.bgcolor = "blue";
    }
    else if (t >= 10 && t <= 25) {
        iframe.contentDocument.write("<br>Normal");
        iframe.bgcolor = "lightgreen";
    }
    else if (t > 25 && t <= 35) {
        iframe.contentDocument.write("<br>Chaud");
        iframe.bgcolor = "orange";
    }
    else if (t > 35) {
        iframe.contentDocument.write("<br>Très chaud");
        iframe.bgcolor = "red";
    }

    iframe.contentDocument.write("<br> <button onclick=\"parent.ex2_temperature()\">Refaire</button>");

    iframe.contentDocument.close();
}

function ex3_comparaison() {
    var a = Number(prompt("Premier nombre :"));
    var b = Number(prompt("Deuxième nombre :"));
    var iframe = document.getElementById("resultatjs");
    iframe.contentDocument.open();
    iframe.contentDocument.write("<link rel='stylesheet' href='tp12.css'>");
    
    if (a > b) {
        iframe.contentDocument.write("<br>Le plus grand est : " + a + "<br>");
        iframe.contentDocument.write("<br>Le plus petit est : " + b + "<br>");
    }
    else if (a < b) {
        iframe.contentDocument.write("<br>Le plus grand est : " + b + "<br>");
        iframe.contentDocument.write("<br>Le plus petit est : " + a + "<br>");
    }
    else if (a == b) {
        iframe.contentDocument.write("<br>Les deux nombres sont égaux : " + a + "<br>");
    }

    iframe.contentDocument.write("<br> <button onclick=\"parent.ex3_comparaison()\">Refaire</button>");
    iframe.contentDocument.close();
}
