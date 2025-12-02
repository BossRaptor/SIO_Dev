// Réponses correctes
var reponses = {
    q1: 'a',
    q2: 'b',
    q3: 'a',
    q4: 'b',
    q5: ['a', 'c'],
    q6: 'a',
    q7: 'b',
    q8: ['a', 'b'],
    q9: 'a',
    q10: 'a'
};

function testqcm() {
    var score = 0;
    var total = 10;

    // Questions à choix unique (radio)
    var questionsRadio = ['q1', 'q2', 'q3', 'q4', 'q6', 'q7', 'q9', 'q10'];
    
    for (var i = 0; i < questionsRadio.length; i++) {
        var q = questionsRadio[i];
        var reponseSelectionnee = document.querySelector('input[name="' + q + '"]:checked');
        if (reponseSelectionnee && reponseSelectionnee.value === reponses[q]) {
            score++;
        }
    }

    // Question 5 (checkbox)
    var q5Checked = document.querySelectorAll('input[name="q5"]:checked');
    var q5Values = [];
    for (var i = 0; i < q5Checked.length; i++) {
        q5Values.push(q5Checked[i].value);
    }
    if (q5Values.length === 2 && q5Values.indexOf('a') !== -1 && q5Values.indexOf('c') !== -1) {
        score++;
    }

    // Question 8 (checkbox)
    var q8Checked = document.querySelectorAll('input[name="q8"]:checked');
    var q8Values = [];
    for (var i = 0; i < q8Checked.length; i++) {
        q8Values.push(q8Checked[i].value);
    }
    if (q8Values.length === 2 && q8Values.indexOf('a') !== -1 && q8Values.indexOf('b') !== -1) {
        score++;
    }

    document.getElementById('score').innerHTML = 'Score : ' + score + ' / ' + total;
}

function afficherCorrige() {
    var fenetre = window.open('', 'Corrige', 'width=500,height=600');
    fenetre.document.write('<html><head><title>Corrigé</title>');
    fenetre.document.write('<style>body{font-family:Arial;padding:20px;}h1{color:#2196F3;}</style>');
    fenetre.document.write('</head><body>');
    fenetre.document.write('<h1>Corrigé du Quiz</h1>');
    fenetre.document.write('<p><strong>1.</strong> a) Services Informatiques aux Organisations</p>');
    fenetre.document.write('<p><strong>2.</strong> b) Deux</p>');
    fenetre.document.write('<p><strong>3.</strong> a) Solutions Logicielles et Applications Métiers</p>');
    fenetre.document.write('<p><strong>4.</strong> b) Solutions d\'Infrastructure, Systèmes et Réseaux</p>');
    fenetre.document.write('<p><strong>5.</strong> a) 2 ans, c) En alternance</p>');
    fenetre.document.write('<p><strong>6.</strong> a) HyperText Markup Language</p>');
    fenetre.document.write('<p><strong>7.</strong> b) CSS</p>');
    fenetre.document.write('<p><strong>8.</strong> a) Python, b) JavaScript</p>');
    fenetre.document.write('<p><strong>9.</strong> a) Stocker et organiser des données</p>');
    fenetre.document.write('<p><strong>10.</strong> a) Structured Query Language</p>');
    fenetre.document.write('<br><button onclick="window.close()">Fermer</button>');
    fenetre.document.write('</body></html>');
    fenetre.document.close();
}

function effacer() {
    document.getElementById('quizForm').reset();
    document.getElementById('score').innerHTML = '';
}
