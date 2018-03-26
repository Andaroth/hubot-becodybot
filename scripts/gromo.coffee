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

  gromores = [
    "Hubot est très triste de t'entendre parler comme ça petit sacrichenapan !",
    "Watch your language !",
    "Attention, tu vas finir dans une poubelle si tu parles comme une ordure !",
    "On ne dit pas ça !",
    "Rappel, tu es en formation, pas à la foire à la saucisse de Mulhouse !"
  ]
  retares = "Si tu es en retard, n'oublie pas de prévenir par mail admin@becode.org ainsi que tes deux formateurs"
  lateres = "If you are late, don’t forget to warn admin@becode.org and your 2 coaches by email."
  bruforma = "Hakim Kahya | Assistant administratif (accueil)
Tél: +32 2 435 23 00
h.kahya@bruxellesformation.brussels
"
  meteores = "open link to https://www.google.be/search?newwindow=1&ei=_fa4Wu3GINO4jAOJuZDoAQ&q=weather+forecast+near+you&oq=weather+forecast+near+you"

  uwelkom = [
    "De rien !",
    "Avec plaisir ;)",
    "Pour vous servir !",
    "C'est gratuit ! :)"
  ]

  jokeres = [
    "Tu m'as bien regardé ? Tu m'as pris pour Siri ou c'est comment ?",
    "La blague c'est quand t'es occupé de tester ce bot au lieu de bosser !",
    "Pinces-me et Retourne-travailler sont sur un bâteau, Pinces-me tombe dans l'eau, qui reste-t-il ?"
  ]
  mail = [
    "admin":"admin@becode.org",
    "alex":"alexandre@becode.org",
    "ber":"bertrand@becode.org"
  ]
  robot.hear 
  /mail alexandre/i, 
  /mail de alexandre/i, 
  /mail d'alexandre/i, 
    (res) -> res.send mail.alex

  robot.hear /joke/, (res) -> res.send res.random jokeres
  robot.hear /blague/, (res) -> res.send res.random jokeres

  robot.hear /m'ouvrir la porte/i, (res) -> res.send "Où est ton badge ?"

  robot.hear /Steve m'a-t-il aidé ?/i, (res) -> res.send "Steve est un lâcheur"
  robot.hear /Merci Hubot/i, (res) -> res.send res.random uwelkom

  robot.hear /sens de la vie/i, (res) -> res.send "La réponse est retourne travailler !"

  robot.hear /caca/i, (res) -> res.send res.random gromores
  robot.hear /pipi/i, (res) -> res.send res.random gromores
  robot.hear /putain/i, (res) -> res.send res.random gromores
  robot.hear /merd/i, (res) -> res.send res.random gromores
  robot.hear /chier/i, (res) -> res.send res.random gromores
  robot.hear /con/i, (res) -> res.send res.random gromores
  robot.hear /conne/i, (res) -> res.send res.random gromores
  robot.hear /bordel/i, (res) -> res.send res.random gromores
  robot.hear /connard/i, (res) -> res.send res.random gromores
  robot.hear /enfoiré/i, (res) -> res.send res.random gromores
  robot.hear /fuck/i, (res) -> res.send res.random gromores
  robot.hear /shit/i, (res) -> res.send res.random gromores
  robot.hear /bastard/i, (res) -> res.send res.random gromores
  robot.hear /encul/i, (res) -> res.send res.random gromores
  robot.hear /bitch/i, (res) -> res.send res.random gromores
  robot.hear /pute/i, (res) -> res.send res.random gromores
  robot.hear /bâtar/i, (res) -> res.send res.random gromores
  robot.hear /batar/i, (res) -> res.send res.random gromores
  robot.hear /ta gueule/i, (res) -> res.send res.random gromores
  robot.hear /taggle/i, (res) -> res.send res.random gromores
  robot.hear /fils de/i, (res) -> res.send res.random gromores
  # late
  robot.hear /en retar/i, (res) -> res.send retares
  robot.hear /mon retar/i, (res) -> res.send retares
  # late in english
  robot.hear /m late/i, (res) -> res.send lateres
  robot.hear /ll be late/i, (res) -> res.send lateres
  robot.hear /I will be late/i, (res) -> res.send lateres
  #bxf
  robot.hear /bxf/i, (res) -> res.send bruforma
  robot.hear /bruxelles-formation/i, (res) -> res.send bruforma
  robot.hear /bruxelles formation/i, (res) -> res.send bruforma
  #other
  robot.hear /meteo/i, (res) -> res.send meteores
  robot.hear /météo/i, (res) -> res.send meteores
  robot.hear /quel temps fait/i, (res) -> res.send meteores
  robot.hear /putin/i, (res) -> res.send "Était-ce une vulgarité ou juste le nom du président de Russie ?"
  robot.hear /kikoo/i, (res) -> res.send "Tu dis encore Kikoo à ton âge toi ?"
  robot.hear /help/i, (res) -> res.send "Bonjour, je suis l'aide. Vous vous sentez mieux maintenant ?"
  robot.hear /@hubot/i, (res) -> res.send "PM only"
  robot.hear /bot test/i, (res) -> res.send "Axel Fiolle dit : On m'a demandé de faire un bot qui dit erreur... et ça marche !!"