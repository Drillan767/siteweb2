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
  * Intégration terminée !! \o/
  
* Partie articles :
  * L'utilisateur (moi en l'occurence) peut y ajouter un titre, une phrase d'accroche, le texte lui meme, et une image.
  * Lors de la sauvegarde, le titre de l'article est "sluggé" afin que l'on évite les 'articles/3'
  * Je pense y faire une partie "cours" où je pense pouvoir centraliser tout ce que j'ai pu apprendre, le tout en français
  * Intégration terminée \o/
  * TODO : mettre en place CKEditor pour mettre plus facilement les balises nécessaires pour que HighLightJS fonctionne
  * Les derniers articles ainsi que leur image d'illustration sont visibles / cliquables depuis la vue d'un article, avec l'effet parallax dispo en front page
  
  
* Partie portfolio
  * L'utilisateur (c'est encore moi) peut créer un portfolio et y rajouter un titre, une description, une catégorie (genre "PHP", "Ruby", "Intégration", "Angular JS", etc)
  * Le détail le plus important est la possibilité de sauvegarder PLUSIEURS photos, et celles ci ne sont pas supprimées
  si l'utilisateur (devine qui) en rajoute d'autres quand il éditera ce dernier
  * Le slug est également présent ici (et vive vive vive le référencement)
  * Ajout de boutons en mode admin pour modifier ou supprimer un "album" depuis la vue index
  * Pour le reste, voir le commit #da03822
  * Intégration terminée \o/
  * Effet "hover" en CSS pure pour voir des détails (catégorie, lien, plus modification ou suppression en mode admin)
  
* Général :
  * Le système de titre ("Joseph Levarato | < la page en question>" ) est fait
  * Partie "qui suis-je", "contrat d'utilisation" et "plan du site" encore vide
  * Bower installé
  * Layout intégré \o/
  * Ajout d'une partie permettant de se déco et d'accéder à l'administration lorsque connecté dans la nav (#da03822)
