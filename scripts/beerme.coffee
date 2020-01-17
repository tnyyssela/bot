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
#   hubot beer me - Grab me a beer
#
# Author:
#  houndbee

beers = [
  "http://organicxbenefits.com/wp-content/uploads/2011/11/organic-beer-health-benefits.jpg",
  "http://www.beer100.com/images/beermug.jpg",
  "http://media.treehugger.com/assets/images/2011/10/save-the-beers.jpg",
  "http://poemsforkush.files.wordpress.com/2012/04/beer.jpg",
  "http://images.seroundtable.com/android-beer-dispenser-1335181876.jpg",
  "http://365thingsaustin.com/wp-content/uploads/beer-flight1.jpg",
  "http://media.culturemap.com/crop/c8/a3/600x450/beer_tasting.jpg",
  "http://cdn0.wideopencountry.com/wp-content/uploads/2017/04/beer-793x526.jpg",
  "http://texasbeerbus.com/wp-content/uploads/2016/06/bar-1-1.jpg",
  "https://i.pinimg.com/736x/57/e8/bb/57e8bb4138f665b0b47a6bb00a68465d--beer-quotes-beer-sayings.jpg",
  "https://www.drinkpreneur.com/wp-content/uploads/2017/04/drinkpreneur_2016-01-26-1453821995-8643361-beermain.jpg",
  "https://fm.cnbc.com/applications/cnbc.com/resources/img/editorial/2017/06/16/104535094-Sierra_Nevada.jpg",
  "http://gph.is/1Zyb5W2",
  "http://gph.is/1e6ejOA",
  "http://gph.is/HgW5cH",
  "http://gph.is/VT5L5d",
  "http://gph.is/1hlcLNf",
  "http://gph.is/2bk5GnC"
]

module.exports = (robot) ->
  robot.hear /.*(beer me).*/i, (msg) ->
    msg.send msg.random beers