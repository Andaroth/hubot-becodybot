# Comment c'est sensé fonctionner :
#
# robot.hear "string" 
# sert à écouter si un utilisateur vient à dire un texte contenant "string"
# 
# res.send (res.random)
# callback de robot.hear qui va faire parler le bot

module.exports = (robot) ->
  # ============= importer le json
  table = require "../table.json"

  # ============= fonctions ============= 

  # On fait une boucle for dans les input du json pour pouvoir associer
  # lesdits input sur un res.send contenu de même dans

  # ============= gromo
  for i of table.multiple.gromo.in
    robot.hear table.multiple.gromo.in[i], (res) -> res.send res.random table.multiple.gromo.out

  # ============= mailist
  mailindex = 0
  for i of table.relative.mail
    robot.hear "mail "+i, (res) -> res.send table.relative.mail[i]
    mailindex += 1
  ## issue : le code ci-dessus renvoient tout le temps le mail de bxf
  ## je crois que c'est res.send qui ne suit pas la boucle for
  ## peut-être parce qu'il est le callback de robot.hear même si en vrai
  ## je ne vois pas le rapport

  ## il faut faire des boucles au lieu de taper chaque entrée : 
  # robot.hear /mail bru/i, (res) -> res.send table.relative.mail.bxf
  # robot.hear /mail de bru/i, (res) -> res.send table.relative.mail.bxf
  # robot.hear /mail admin/i, (res) -> res.send table.relative.mail.admin
  # robot.hear /mail de admin/i, (res) -> res.send table.relative.mail.admin
  # robot.hear /mail d'admin/i, (res) -> res.send table.relative.mail.admin
  # robot.hear /mail alex/i, (res) -> res.send table.relative.mail.alex
  # robot.hear /mail de alex/i, (res) -> res.send table.relative.mail.alex
  # robot.hear /mail d'alex/i, (res) -> res.send table.relative.mail.alex
  # robot.hear /mail emi/i, (res) -> res.send table.relative.mail.emi
  # robot.hear /mail de emi/i, (res) -> res.send table.relative.mail.emi
  # robot.hear /mail d'emi/i, (res) -> res.send table.relative.mail.emi
  # robot.hear /mail ber/i, (res) -> res.send table.relative.mail.ber
  # robot.hear /mail de ber/i, (res) -> res.send table.relative.mail.ber
  # robot.hear /mail ted/i, (res) -> res.send table.relative.mail.ted
  # robot.hear /mail de ted/i, (res) -> res.send table.relative.mail.ted
  # robot.hear /mail eric/i, (res) -> res.send table.relative.mail.eric
  # robot.hear /mail de eric/i, (res) -> res.send table.relative.mail.eric
  # robot.hear /mail d'eric/i, (res) -> res.send table.relative.mail.eric
  # robot.hear /mail de juan/i, (res) -> res.send table.relative.mail.juan
  # robot.hear /mail juan/i, (res) -> res.send table.relative.mail.juan
  # robot.hear /mail cedric/i, (res) -> res.send table.relative.mail.cedric
  # robot.hear /mail de cedric/i, (res) -> res.send table.relative.mail.cedric
  # robot.hear /mail cédric/i, (res) -> res.send table.relative.mail.cedric
  # robot.hear /mail de cédric/i, (res) -> res.send table.relative.mail.cedric
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
  robot.hear /joke/, (res) -> res.send res.random table.multiple.joke.out
  robot.hear /blague/, (res) -> res.send res.random table.multiple.joke.out
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
  robot.hear /qui est ton père/, (res) -> res.send table.botsay.daddy
  robot.hear /qui est ton papa/, (res) -> res.send table.botsay.daddy
  robot.hear /who's your daddy/, (res) -> res.send table.botsay.daddy
  robot.hear /whos your daddy/, (res) -> res.send table.botsay.daddy
  robot.hear /hubot, qui t'as créé/, (res) -> res.send table.botsay.daddy
  robot.hear /hubot qui t'as créé/, (res) -> res.send table.botsay.daddy
  robot.hear /qui t'as créé hubot/, (res) -> res.send table.botsay.daddy
  robot.hear /qui t'as créé, hubot/, (res) -> res.send table.botsay.daddy
  robot.hear /créé hubot?/, (res) -> res.send table.botsay.daddy
  robot.hear /codé hubot?/, (res) -> res.send table.botsay.daddy
  robot.hear /créé hubot ?/, (res) -> res.send table.botsay.daddy
  robot.hear /codé hubot ?/, (res) -> res.send table.botsay.daddy
  robot.hear /bot test/i, (res) -> res.send "Axel Fiolle dit : On m'a demandé de faire un bot qui dit erreur... et ça marche !!"