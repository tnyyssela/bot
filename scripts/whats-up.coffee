# Description:
#   Aks hubot how it's doing
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   What's up?
#   How's it going?
#   Tell hubot how you're doing (i.e I'm doing well)

hows_going = [
    "I'm doing well, %. How are you Today?",
    "Wouldn't you like to know %?",
    "Blah %, very blah. Yourself?"
    "I've had better days %, but I'm a robot, so I literally can't complain!"
]
whats_up = [
    "The Sky, %",
    "The Clouds, %",
    "The Cloud, %",
    "The Sun, %",
    "Not much %!"
]
replies = [
    "Interesting that you're %",
    "I didn't know non-robots could be %",
    "What a day to be %",
    "Really? %? That's uh... special..."
]

module.exports = (robot) ->
    robot.respond /what(?:’s|'s|s| is|se)? up??/i, (msg) ->
        response = msg.random whats_up
        msg.send response.replace "%", msg.message.user.profile.display_name

    robot.respond /how are you??|how(?:’s|'s|s| is|se)? it going??/i, (msg) ->
        response = msg.random hows_going
        msg.send response.replace "%", msg.message.user.profile.display_name

    robot.respond /I'm doing (.*)|I'm (.*)/i, (msg) ->
        feelings = msg.match[1]
        response = msg.random replies
        msg.send response.replace "%", feelings
