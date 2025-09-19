# **TP6 notés CSS niveau 1: Création d’un formulaire d’inscription**

## **Objectifs pédagogiques**

\- Reprendre et comprendre le code CSS du formulaire de contact.  
\- Créer un nouveau formulaire différent en HTML.  
\- Appliquer et adapter les règles CSS vues.  
\- Personnaliser l’apparence avec de nouvelles propriétés CSS.

## **Consignes HTML**

Créez un fichier inscription.html contenant :  
\- Un titre \<h1\> : Formulaire d’inscription.  
\- Un formulaire avec les champs suivants :  
  \- Nom d’utilisateur (input type="text")  
  \- Mot de passe (input type="password")  
  \- Confirmation du mot de passe (input type="password")  
  \- Email (input type="email")  
  \- Date de naissance (input type="date")  
  \- Genre (input type="radio" : Homme, Femme, Autre)  
  \- Bouton S’inscrire (input type="submit").

Mettez le formulaire dans un tableau de deux colonnes ( non visible) :Les labelles à gauches et les objets ( zones texte..) à droite

## **Consignes CSS**

Créez un fichier style.css (reprenez le code du TP précédent) puis :

1\. Couleurs et fond  
   \- Changez la couleur de fond de la page.  
   \- Donnez une autre couleur au titre \<h1\>.

 Les deux premiers labelles : couleur bleu

Le reste ; couleur verte

2\. Mise en forme du formulaire  
   \- Appliquez un fond clair différent du précédent (par exemple \#f0f8ff).  
   \- Ajoutez une bordure arrondie (border-radius).  
   \- Ajoutez une ombre portée (box-shadow) pour le form

3\. Champs du formulaire  
   \- Stylisez les inputs (text, email, password, date) de la même manière.  
   \- bordure bleue 

4\. Bouton  
   \- Fond bleu et texte blanc. 

   \- Changez la couleur au survol (hover) → vert.

5\. Responsivité  
   \- Assurez-vous que le formulaire occupe 100% de la largeur sur mobile (max 500px).

\- Ajoutez un champ J’accepte les conditions générales (checkbox).  
\- Faites que le bouton devienne rouge si la case n’est pas cochée (utiliser :disabled).

