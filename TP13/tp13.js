function afficherTableau() {
    document.write("<table border='2px' width='30%'>");
    for(let i = 0; i <= 5; i++) {
        document.write("<tr><td>" + (i + 1) + "</td><td>*</td><td>*</td></tr>");
    }
    document.write("</table>");
    document.write("<br><a href='tp13.html'>Retour à l'accueil</a>");
}

function afficherTableau2() {
    var nombre = prompt("Entrez le nombre de lignes :");
    document.write("<table border='2px' width='30%'>");
    for(let i = 1; i <= nombre; i++) {
        document.write("<tr><td>" + i + "</td><td>*</td><td>*</td></tr>");
    }
    document.write("</table>");
    document.write("<br><a href='tp13.html'>Retour à l'accueil</a>");
}

function seConnecter() {
    var login = document.getElementById("utilisateur").value;
    var mdp = document.getElementById("motdepasse").value;
    
    if(login == "admin" && mdp == "admin") {
        window.location.href = "bienvenue.html";
    } else {
        window.location.href = "refus.html";
    }
}

function chaineCaracteres() {
    var mot = prompt("Donnez un mot :");
    
    document.write("<p>Mot en majuscules : " + mot.toUpperCase() + "</p>");
    document.write("<p>Mot en minuscules : " + mot.toLowerCase() + "</p>");
    document.write("<p>Le mot contient " + mot.length + " caractères</p>");
    document.write("<p>La première lettre est : " + mot.substr(0, 1) + "</p>");
    document.write("<br><a href='tp13.html'>Retour à l'accueil</a>");
}
