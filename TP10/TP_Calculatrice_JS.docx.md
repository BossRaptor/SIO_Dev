#  **Bloc1 : Support et mise à disposition des services informatiques** 

# **Développer la présence en ligne de l’organisation** 

# **Bloc 1 : Compétence générale : Participer à l’évolution d’un site Web** 

# **TP Javascript**

# **TP JavaScript – Création d’une mini-calculatrice**

##  **Compétences visées**

\- Manipuler le DOM (Document Object Model) avec getElementById.  
\- Gérer les événements (boutons déclenchant des fonctions).  
\- Effectuer des traitements simples en JavaScript (opérations arithmétiques).  
\- Développer la logique conditionnelle (test de division par zéro, parité d’un nombre).  
\- Séparer la logique (JS) de la présentation (HTML/CSS).

\- Comprendre comment accéder et modifier dynamiquement plusieurs éléments du DOM.

\-Savoir remettre un formulaire dans son état initial (utile dans beaucoup d’applications web).

\====================================================================

##  **Contexte**

Vous allez développer une mini-calculatrice web permettant d’effectuer des opérations arithmétiques simples entre deux nombres. L’objectif est de manipuler les fonctions JavaScript et de voir comment elles interagissent avec les éléments d’une page HTML.

\====================================================================

##  **Travail demandé**

Objectif technique  : **savoir structurer une interface web** avec des champs de saisie et des boutons.

Créer un fichier index.html qui contient :  
\- Deux champs de saisie (t1 et t2) pour entrer les nombres.( avec placeholder)  
\- Un champ de résultat (t3).  
\- Un champ indiquant si le résultat est pair ou impair (t4).

Objectif technique  : Ajouter les boutons et lier les événements  
\- Des boutons permettant d’appeler les fonctions : Addition, Soustraction, Multiplication, Division, Permutation (échanger la valeur des deux champs), Vérification de parité (Pair/Impair).  
\====================================================================

Objectif   Créer un fichier script.js et définir les fonctions

Créer un fichier script.js 

Implémenter la permutation

\====================================================================

Objectif : Implémenter les fonctions suivantes :  
\- addition()  
\- soustraction()  
\- multiplication()  
\- division() (avec gestion d’erreur si division par 0\)

\- permute()  
\- parite()

\====================================================================

Exemple d’interface attendu :

![][image1]  
\====================================================================

*if (X %2==0* 

 *Objectif : Lier le script à la page HTML*

*Relier votre page HTML au script avec :*  
*\<script src="script.js"\>\</script\>*

Tester les fonctionnalités de votre interface.

## **Critères d’évaluation**

\- Les fonctions JavaScript produisent le résultat attendu.  
\- Le code est indenté et lisible.  
\- L’interface est claire et fonctionnelle.  
\- Bonus : mise en forme agréable avec un peu de CSS.

\====================================================================

Rédiger dans votre page un paragraphe ( au-dessous de la calculatrice), expliquer tout ce que vous avez appris suite à ce Tp.

\====================================================================

**Exercice Bonus : Ajout d’une fonction « Effacer »**

**Compétence visée** :

* Être capable de **réinitialiser dynamiquement des champs de formulaire** avec JavaScript.

* Gérer l’**interaction complète avec l’utilisateur** (saisie, calculs, remise à zéro).

---

**Consigne**

Ajoutez un bouton **« Effacer »** qui, lorsqu’il est cliqué, remet tous les champs

A.N : le caractère ‘ ’ est représenté comme un vide

[image1]: <data:image/png;base64,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>