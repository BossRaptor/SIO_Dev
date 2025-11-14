function seconnecter3() {
    var i = 0;
    do {
        var id = prompt("Entrez votre identifiant :");
        var mdp = prompt("Entrez votre mot de passe :");
        if (id == "admin" && mdp == "admin") {
            document.write("<p>Bienvenue, " + id + "!</p>");
            break;
        } else {
            alert("Acces Refusé");
            i = i + 1;
        }
    } 
    while (i < 3);
    if (i == 3) alert("Delai depassé");
}