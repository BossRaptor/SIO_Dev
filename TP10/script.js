function addition() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) + Number(b);
    document.getElementById("t3").value = c;
}

function soustraction() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) - Number(b);
    document.getElementById("t3").value = c;
}

function multiplication() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) * Number(b);
    document.getElementById("t3").value = c;
}

function division() {
    var a = document.getElementById("t1").value;
    var b = document.getElementById("t2").value;
    var c = Number(a) / Number(b);
    document.getElementById("t3").value = c;
}

function parite() {
    var reponse = document.getElementById("t3").value;
    var modulo = (Number(reponse) % 2 == 0) ? "Pair" : "Impair";
    document.getElementById("t4").value = modulo;
}

function permutation() {
    var x = document.getElementById("t1").value;
    var y = document.getElementById("t2").value;
    document.getElementById("t2").value = x;
    document.getElementById("t1").value = y;
}

/* BONUS : bouton reset */
function reset() {
    var x = document.getElementById("t1").value;
    var y = document.getElementById("t2").value;
    var resultat = document.getElementById("t3").value;
    var parite = document.getElementById("t4").value;
    document.getElementById("t1").value = null;
    document.getElementById("t2").value = null;
    document.getElementById("t3").value = null;
    document.getElementById("t4").value = null;
}