function affichagetap() {
    document.write("<table border=2px width=30%")
    for(let i=0; i<=2; i++) {
        document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")
    }
    document.write("</table>")
}

function affichagetap2() {
    var X = prompt("Combient de lignes ?")
    document.write("<table border=2px width=30%")
    for(let i=1; i<X; i++) {
        document.write("<tr><td>"+i+"</td><td>*</td><td>*</td></tr>")
    }
    document.write("</table>")
}

function seconnecter() {
    var login = prompt("Entrez votre nom d'utilisateur")
    var password = prompt("Entrez votre mot de passe")
    if (login == "admin" && password == "admin") {
        alert("Bienvenue :" +login)
    } else {
        alert("Accès refusé")
    }
}

function cdc() {
    var chaine=prompt("Donnez un mot")
    document.write(chaine.toUpperCase()+"<br>")
    document.write(chaine.toLowerCase()+"<br>")
    document.write("La chaine contient "+chaine.length+" caractères"+"<br>")
    document.write("La premiere lettre est: "+chaine.substr(4,2)+"<br>")
}
