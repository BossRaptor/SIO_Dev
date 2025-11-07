function calculer() {
    // Ligne 1
    var q1 = document.getElementById("quantite1").value;
    var p1 = document.getElementById("prix1").value;
    var r1 = Number(q1) * Number(p1);
    document.getElementById("resultat1").value = r1;

    // Ligne 2
    var q2 = document.getElementById("quantite2").value;
    var p2 = document.getElementById("prix2").value;
    var r2 = Number(q2) * Number(p2);
    document.getElementById("resultat2").value = r2;

    // Ligne 3
    var q3 = document.getElementById("quantite3").value;
    var p3 = document.getElementById("prix3").value;
    var r3 = Number(q3) * Number(p3);
    document.getElementById("resultat3").value = r3;

    // Calcul du total
    var total = r1 + r2 + r3;
    document.getElementById("total").value = total;
}

function reinitialiser() {
  document.getElementById("article1").value = "#1";
  document.getElementById("quantite1").value = null;
  document.getElementById("prix1").value = null;
  document.getElementById("resultat1").value = null;

  document.getElementById("article2").value = "#2";
  document.getElementById("quantite2").value = null;
  document.getElementById("prix2").value = null;
  document.getElementById("resultat2").value = null;

  document.getElementById("article3").value = "#3";
  document.getElementById("quantite3").value = null;
  document.getElementById("prix3").value = null;
  document.getElementById("resultat3").value = null;

  document.getElementById("total").value = null;
}

function imprimer() {
  window.print();
}
