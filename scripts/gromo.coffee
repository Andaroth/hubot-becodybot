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
    "On ne dit pas ça !"
  ]
  retares = "Si tu es en retard, n'oublie pas de prévenir par mail admin@becode.org ainsi que tes deux formateurs"
  lateres = "If you are late, don’t forget to warn admin@becode.org and your 2 coaches by email."
  bruforma = "Hakim Kahya | Assistant administratif (accueil)
Tél: +32 2 435 23 00
h.kahya@bruxellesformation.brussels
"
  meteores = "open link to https://www.google.be/search?newwindow=1&ei=_fa4Wu3GINO4jAOJuZDoAQ&q=weather+forecast+near+you&oq=weather+forecast+near+you"

  robot.hear /putain/i, (res) -> res.random gromores
  robot.hear /putin/i, (res) -> res.send "Était-ce une vulgarité ou juste le nom du président de Russie ?"
  robot.hear /merd/i, (res) -> res.random gromores
  robot.hear /chier/i, (res) -> res.random gromores
  robot.hear /con/, (res) -> res.random gromores
  robot.hear /conne/, (res) -> res.random gromores
  robot.hear /bordel/i, (res) -> res.random gromores
  robot.hear /connard/i, (res) -> res.random gromores
  robot.hear /enfoiré/i, (res) -> res.random gromores
  robot.hear /fuck/i, (res) -> res.random gromores
  robot.hear /shit/i, (res) -> res.random gromores
  robot.hear /bastard/i, (res) -> res.random gromores
  robot.hear /encul/i, (res) -> res.random gromores
  robot.hear /bitch/i, (res) -> res.random gromores
  robot.hear /pute/i, (res) -> res.random gromores
  robot.hear /bâtar/i, (res) -> res.random gromores
  robot.hear /batar/i, (res) -> res.random gromores
  
  # late
  robot.hear /en retar/i, (res) -> res.send retares
  robot.hear /mon retar/i, (res) -> res.send retares
  # late in english
  robot.hear /m late/i, (res) -> res.send lateres
  robot.hear /I'll be late/i, (res) -> res.send lateres
  robot.hear /I will be late/i, (res) -> res.send lateres

  robot.hear /meteo/i, (res) -> res.send meteores
  robot.hear /quel temps fait/i, (res) -> res.send meteores

  robot.hear /bxf/i, (res) -> res.send bruforma
  robot.hear /bruxelles-formation/i, (res) -> res.send bruforma

  robot.hear /ton num/i, (res) -> res.send "On échange pas les nums sur Ryver, allez en privé !"
  robot.hear /ton mot de pas/i, (res) -> res.send "On ne donne pas de mots passe !"
  robot.hear /help/i, (res) -> res.send "Bonjour, je suis l'aide. Vous vous sentez mieux maintenant ?"

  robot.hear /@hubot/i, (res) ->
    res.send "C'est moué Hubot \\^-^"

  robot.hear /bot test/i, (res) ->
    res.send "On m'a demandé de faire un bot qui dit erreur... et ça marche !!"

  # robot.hear /Thomas Geenen/i, (res) -> res.send "Qui ?"

  robot.hear /badger/i, (res) ->
    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"
  
  robot.respond /open the (.*) doors/i, (res) ->
    doorType = res.match[1]
    if doorType is "pod bay"
      res.reply "I'm afraid I can't let you do that."
    else
      res.reply "Opening #{doorType} doors"
  
  robot.hear /I like pie/i, (res) ->
    res.emote "makes a freshly baked pie"
  
  lulz = ['lol', 'rofl', 'lmao']
  
  robot.respond /lulz/i, (res) ->
    res.send res.random lulz
  
  robot.topic (res) ->
    res.send "#{res.message.text}? That's a Paddlin'"
  
  
  enterReplies = ['Hi', 'Target Acquired', 'Firing', 'Hello friend.', 'Gotcha', 'I see you']
  leaveReplies = ['Are you still there?', 'Target lost', 'Searching']
  
  robot.enter (res) ->
    res.send res.random enterReplies
  robot.leave (res) ->
    res.send res.random leaveReplies
  
  answer = process.env.HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING
  
  robot.respond /what is the answer to the ultimate question of life/, (res) ->
    unless answer?
      res.send "Missing HUBOT_ANSWER_TO_THE_ULTIMATE_QUESTION_OF_LIFE_THE_UNIVERSE_AND_EVERYTHING in environment: please set and try again"
      return
    res.send "#{answer}, but what is the question?"
  
  robot.respond /you are a little slow/, (res) ->
    setTimeout () ->
      res.send "Who you calling 'slow'?"
    , 60 * 1000
  
  annoyIntervalId = null
  
  robot.respond /annoy me/, (res) ->
    if annoyIntervalId
      res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
      return
  
    res.send "Hey, want to hear the most annoying sound in the world?"
    annoyIntervalId = setInterval () ->
      res.send "AAAAAAAAAAAEEEEEEEEEEEEEEEEEEEEEEEEIIIIIIIIHHHHHHHHHH"
    , 1000
  
  robot.respond /unannoy me/, (res) ->
    if annoyIntervalId
      res.send "GUYS, GUYS, GUYS!"
      clearInterval(annoyIntervalId)
      annoyIntervalId = null
    else
      res.send "Not annoying you right now, am I?"
  
  
  robot.router.post '/hubot/chatsecrets/:room', (req, res) ->
    room   = req.params.room
    data   = JSON.parse req.body.payload
    secret = data.secret
  
    robot.messageRoom room, "I have a secret: #{secret}"
  
    res.send 'OK'
  
  robot.error (err, res) ->
    robot.logger.error "DOES NOT COMPUTE"
  
    if res?
      res.reply "DOES NOT COMPUTE"
  
  robot.respond /have a soda/i, (res) ->
    # Get number of sodas had (coerced to a number).
    sodasHad = robot.brain.get('totalSodas') * 1 or 0
  
    if sodasHad > 4
      res.reply "I'm too fizzy.."
  
    else
      res.reply 'Sure!'
  
      robot.brain.set 'totalSodas', sodasHad+1
  
  robot.respond /sleep it off/i, (res) ->
    robot.brain.set 'totalSodas', 0
    res.reply 'zzzzz'
