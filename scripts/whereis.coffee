# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   where is (whoever)? - Tell us where, where the hell (whoever) is.
#
# Author:
#   brandonvalentine / tristann

places = [
  "Well, maybe % went to get a sideways haircut?",
  "Maybe % went to get a striped shirt?",
  "Maybe % went to get some plastic shoes?",
  "Maybe % went to get some funny sunglasses?",
  "Well, maybe % went to get an Air Force parka?",
  "Maybe % went to get a Vespa scooter?",
  "Maybe % went to get a British flag?",
  "Maybe % went to go Mod Ska dancing?",
  "Well, maybe % went to get a mohawk?",
  "Um... Maybe % went to get some gnarly thrash boots?",
  "Maybe % went to go ride his skateboard?"
]

module.exports = (robot) ->
  robot.hear /where(?:’s|'s|s| is|se)? (.*)?/i, (msg) ->
    person = msg.match[1].replace(/[^a-zA-Z ]/g, "")
    response = msg.random places
    msg.send response.replace "%", person
