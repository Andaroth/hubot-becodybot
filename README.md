# B3C0Dy bot

## Qu'est-ce
Il s'agit d'un chatbot Ryver fonctionnant avec Hubot. 
Le bot est conçu dans le but de réguler et modérer le chat dans certains salons Ryver de BeCode. 


## Le bot peut : 
- Avertir un utilisateur lorsque son vocabulaire est vuglaire
- Donner l'adresse mail d'un coach ou membre du staff
- Donner des instructions en cas de retard
- Mentionner son créateur


## Ce qu'il faut corriger
- La boucle `for` fonctionnelle capable de parcourir les éléments relative.mail de table.json
- Réussir à réutiliser cette boucle pour table.simple


## Objectif
- Relier l'API de Ryver avec ce bot afin de pouvoir
- - Gérer les messages
- - Gérer les utilisateurs

## Installation & environnement

Vous devez forker ce dépot à l'endroit de votre choix.
Configurez les variables d'environnement comme indiqué plus bas puis exécutez la commande suivante à la racine du dossier git :

```
./bin/hubot
``` 

Actuellement, le bot tourne sur Heroku. Il faut définir les variables d'environnement suivantes pour faire fonctionner l'application : 

```ini
HUBOT_NAME = hubot
HUBOT_IP = localhost # l'IP d'où se connecte le bot
port = 5556 # le port par lequel vous voulez faire passer le bot

HUBOT_RYVER_APP_URL = votresalon.ryver.com # l'adresse d'accès au salon Ryver
HUBOT_RYVER_USERNAME = root # username pour accéder au salon
HUBOT_RYVER_PASSWORD = pwd # password pour accéder au salon

HUBOT_RYVER_JOIN_FORUMS = no # Le bot peut-il rejoindre automatiquement tous les salons trouvés ? HUBOT_LOG_LEVEL = debug # niveau de verbosité des log
HUBOT_REDIS_BRAIN = localhost:6379 # Adresse de l'hôte Redis (facultatif je crois)
```

Si vous ne savez pas comment faire, vous pouvez décommenter et configurer les lignes 8 à 15 de `./bin/hubot`. 


## Notes
Les scripts sont écrits en coffeeScript, bon courage. 