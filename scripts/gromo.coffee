# Description:
#   Example scripts for you to examine and try out.
#
# Notes:
#   They are commented out by default, because most of them are pretty silly and
#   wouldn't be useful and amusing enough for day to day huboting.
#   Uncomment the ones you want to try and experiment with.
#
#   These are from the scripting documentation: https://github.com/github/hubot/blob/master/docs/scripting.md

module.exports = (robot) ->

# in and out

  table = {
    "multiple":{
      "gromo":{
        "in":[
          "caca",
          "pipi",
          "putain",
          "merd",
          "chier",
          "con",
          "conne",
          "bordel",
          "connard",
          "enfoir",
          "fuck",
          "shit",
          "bastar",
          "encul",
          "bitch",
          "pute",
          "bite",
          "bâtar",
          "batar",
          "ta gueule",
          "taggle",
          "fils de",
          "mange tes morts"
        ],
        "out":[
          "Hubot est très triste de t'entendre parler comme ça petit sacrichenapan !",
          "Watch your language : this is a professional environment.",
          "Attention, tu vas finir dans une poubelle si tu parles comme une ordure !",
          "On ne dit pas ça !",
          "Rappel, tu es en formation, pas à la foire à la saucisse de Mulhouse !",
        ]
      }, #gromo end
      "joke":{
        "in":["joke","blague"],
        "out":[
          "Tu m'as bien regardé ? Tu m'as pris pour Siri ou c'est comment ?",
          "La blague c'est que tu sois occupé de jouer avec ce bot au lieu de bosser !",
          "Pinces-me et Retourne-travailler sont sur un bâteau, Pinces-me tombe dans l'eau, qui reste-t-il ?"
        ],
      } # joke end
    }, # multiple end
    "relative":{
      "mail":{
        "admin":"admin@becode.org",
        "alex":"alexandre@becode.org",
        "ber":"bertrand@becode.org",
        "emi":"emily@becode.org",
        "ted":"teddy@becode.org",
        "eric":"eric@becode.org",
        "juan":"juan@becode.org",
        "cedric":"cedric@becode.org",
        "bxf":"Hakim Kahya | Assistant administratif (accueil)
          Tél: +32 2 435 23 00
          h.kahya@bruxellesformation.brussels"
      }, #mail end
      "repo":{
        "becode":"https://github.com/becodeorg/",
        "veille":"https://github.com/becodeorg/la-veille",
        "axel":"https://github.com/Andaroth/?tab=repositories"
      }, # repo end
    }, # relative end
    "social":{
      "uwelcome":"Avec plaisir ! ;)",
    },
    "simple":{
      "wifi":"The WiFi password for BC_HUB is `InCodeWeTrust!`",
      "retar":"Si tu es en retard, n'oublie pas de prévenir par mail admin@becode.org ainsi que tes deux formateurs",
      "en retar":"Si tu es en retard, n'oublie pas de prévenir par mail admin@becode.org ainsi que tes deux formateurs",
      "late":"If you are late, don’t forget to warn admin@becode.org and your 2 coaches by email.",
      "m late":"If you are late, don’t forget to warn admin@becode.org and your 2 coaches by email.",
      "l be late":"If you are late, don’t forget to warn admin@becode.org and your 2 coaches by email.",
      "meteo":"https://www.google.be/search?newwindow=1&ei=_fa4Wu3GINO4jAOJuZDoAQ&q=weather+forecast+near+you&oq=weather+forecast+near+you",
      "spotify":"https://open.spotify.com/user/1112523762/playlist/2QJt6MnyK1AHK0H2kzfioO?si=hkyqdQ6gRe-C7-93E2cVTg"
      "putin":"Était-ce une vulgarité ou juste le nom du président de Russie ?",
      "kikoo":"Tu dis encore Kikoo à ton âge toi ?",
      "help":"Bonjour, je suis l'aide. Vous vous sentez mieux maintenant ?",
      "@hubot":"PM only",
      "bot test":"Axel Fiolle dit : On m'a demandé de faire un bot qui dit erreur... et ça marche !!"
    }, #simple end
    "botsay":{
      "gitpush":"It’s time to push! `git add . && git commit -m “ton message de commit” && git push`",
      "motd":"Bienvenue"
    }
  } # table end

# functions

  # gromo
  mapMe = table.multiple.gromo.in;
  # gromoFun = (i, res)
  # avert = (res) -> res.send res.random table.multiple.gromo.out
  # avert gromo for gromo in table.gromo.in

  # gromos = mapMe.map (gromo) -> table.gromo.in; console.log(gromos)
  # robot.hear gromos, (res) -> res.send res.random.gromo.out

  robot.hear /mange tes morts/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /caca/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /pipi/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /putain/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /merd/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /chier/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /con/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /conne/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /bordel/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /connard/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /enfoiré/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /fuck/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /shit/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /bastard/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /encul/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /bitch/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /pute/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /bâtar/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /batar/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /ta gueule/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /taggle/i, (res) -> res.send res.random table.multiple.gromo.out
  robot.hear /fils de/i, (res) -> res.send res.random table.multiple.gromo.out
  #mailist
  robot.hear /mail bru/i, (res) -> res.send table.relative.mail.bxf
  robot.hear /mail de bru/i, (res) -> res.send table.relative.mail.bxf
  robot.hear /mail admin/i, (res) -> res.send table.relative.mail.admin
  robot.hear /mail de admin/i, (res) -> res.send table.relative.mail.admin
  robot.hear /mail d'admin/i, (res) -> res.send table.relative.mail.admin
  robot.hear /mail alex/i, (res) -> res.send table.relative.mail.alex
  robot.hear /mail de alex/i, (res) -> res.send table.relative.mail.alex
  robot.hear /mail d'alex/i, (res) -> res.send table.relative.mail.alex
  robot.hear /mail emi/i, (res) -> res.send table.relative.mail.emi
  robot.hear /mail de emi/i, (res) -> res.send table.relative.mail.emi
  robot.hear /mail d'emi/i, (res) -> res.send table.relative.mail.emi
  robot.hear /mail ber/i, (res) -> res.send table.relative.mail.ber
  robot.hear /mail de ber/i, (res) -> res.send table.relative.mail.ber
  robot.hear /mail ted/i, (res) -> res.send table.relative.mail.ted
  robot.hear /mail de ted/i, (res) -> res.send table.relative.mail.ted
  robot.hear /mail eric/i, (res) -> res.send table.relative.mail.eric
  robot.hear /mail de eric/i, (res) -> res.send table.relative.mail.eric
  robot.hear /mail d'eric/i, (res) -> res.send table.relative.mail.eric
  robot.hear /mail de juan/i, (res) -> res.send table.relative.mail.juan
  robot.hear /mail juan/i, (res) -> res.send table.relative.mail.juan
  robot.hear /mail cedric/i, (res) -> res.send table.relative.mail.cedric
  robot.hear /mail de cedric/i, (res) -> res.send table.relative.mail.cedric
  robot.hear /mail cédric/i, (res) -> res.send table.relative.mail.cedric
  robot.hear /mail de cédric/i, (res) -> res.send table.relative.mail.cedric
  #social
  robot.hear /Merci Hubot/i, (res) -> res.send table.social.uwelcome
  # late
  robot.hear /en retar/i, (res) -> res.send table.simple.retar
  robot.hear /mon retar/i, (res) -> res.send table.simple.retar
  # late in english
  robot.hear /m late/i, (res) -> res.send table.simple.late
  robot.hear /ll be late/i, (res) -> res.send table.simple.late
  robot.hear /I will be late/i, (res) -> res.send table.simple.late
  #bxf
  robot.hear /bxf/i, (res) -> res.send table.relative.mail.bxf
  robot.hear /bruxelles-formation/i, (res) -> res.send table.relative.mail.bxf
  robot.hear /bruxelles formation/i, (res) -> res.send table.relative.mail.bxf
  #repos
  robot.hear /repo veille/i, (res) -> res.send table.multiple.repo.veille
  robot.hear /repo de la veille/i, (res) -> res.send table.multiple.repo.veille
  robot.hear /repo axel/i, (res) -> res.send table.multiple.repo.axel
  robot.hear /repo d'axel/i, (res) -> res.send table.multiple.repo.axel
  robot.hear /repo de axel/i, (res) -> res.send table.multiple.repo.axel
  #badges
  robot.hear /badge claim/i, (res) -> res.send table.relative.mail.claim
  #other
  robot.hear /wifi/, (res) -> res.send table.simple.wifi
  robot.hear /spotify/, (res) -> res.send table.simple.spotify
  robot.hear /joke/, (res) -> res.send res.random table.simple.joke.out
  robot.hear /blague/, (res) -> res.send res.random table.simple.joke.out
  robot.hear /meteo/i, (res) -> res.send table.simple.meteo
  robot.hear /météo/i, (res) -> res.send table.simple.meteo
  robot.hear /quel temps fait/i, (res) -> res.send table.simple.meteo
  robot.hear /m'ouvrir la porte/i, (res) -> res.send "Où est ton badge ?"
  # robot.hear /Steve m'a-t-il aidé ?/i, (res) -> res.send "Steve est un lâcheur"
  robot.hear /sens de la vie/i, (res) -> res.send "La réponse est retourne travailler !"
  robot.hear /putin/i, (res) -> res.send "Était-ce une vulgarité ou juste le nom du président de Russie ?"
  robot.hear /kikoo/i, (res) -> res.send "Tu dis encore Kikoo à ton âge toi ?"
  robot.hear /help/i, (res) -> res.send "Bonjour, je suis l'aide. Vous vous sentez mieux maintenant ?"
  robot.hear /@hubot/i, (res) -> res.send "PM only"
  robot.hear /bot test/i, (res) -> res.send "Axel Fiolle dit : On m'a demandé de faire un bot qui dit erreur... et ça marche !!"