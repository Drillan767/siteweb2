# README

Tentons de faire ça proprement :

* Partie administration : 
  * Peut se connecter
  * Peut créer des articles, des portfolios
  * Peut supprimer lesdits articles et portfolios
  * Manque l'intégration

* Partie contact :
  * Fonctionnelle
  * Un chouia de paramétrage est nécessaire pour D-Day (Déploiement Day)
  * Manque l'intégration
  
* Partie articles :
  * L'utilisateur (moi en l'occurence) peut y ajouter un titre, une phrase d'accroche, le texte lui meme, et une image.
  * Lors de la sauvegarde, le titre de l'article est "sluggé" afin que l'on évite les 'articles/3'
  * Je pense y faire une partie "cours" où je pense pouvoir centraliser tout ce que j'ai pu apprendre, le tout en français
  * TODO : rajouter la possibilité d'afficher du code avec la syntaxe qui va bien. Et pourquoi pas un module disqus tiens.
  * Manque l'intégration
  
* Partie portfolio
  * L'utilisateur (c'est encore moi) peut créer un portfolio et y rajouter un titre, une description, une catégorie (genre "PHP", "Ruby", "Intégration", "Angular JS", etc)
  * Le détail le plus important est la possibilité de sauvegarder PLUSIEURS photos, et celles ci ne sont pas supprimées
  si l'utilisateur (devine qui) en rajoute d'autres quand il éditera ce dernier
  * Le slug est également présent ici (et vive vive vive le référencement)
  * Manque le lien pour supprimer une photo en tant qu'administrateur
  * Les photos apparaitront de façon plutôt petites (maximum 250 px de large je pense) mais auront un zoom quand cliqué
  * Manque l'intégration
  
* Général :
  * Le système de titre ("Joseph Levarato | < la page en question>" ) est fait
  * Partie "qui suis-je", "contrat d'utilisation" et "plan du site" encore vide
  * Bower installé
