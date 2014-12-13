###
ParamsParser = require 'params-parser'
rules = [rule1, rule2]
parser = new ParamsParser rules
params = parser.parse inputString


rule1 =

  reg: /james*-->\###
uuid = require 'node-uuid'
class Create
  constructor: (text) ->

    @txt = text.toString() or "james --> create a new Person named John with age of 20 years-old"
    re1 = "(james)" # Word 1
    re2 = "(\\s+)" # White Space 1
    re3 = "(-)" # Any Single Character 1
    re4 = "(-)" # Any Single Character 2
    re5 = "(>)" # Any Single Character 3
    re6 = "(\\s+)" # White Space 2
    re7 = "(create)" # Word 2
    re8 = "(\\s+)" # White Space 3
    re9 = ".*?" # Non-greedy match on filler
    re10 = "(\\s+)" # White Space 4
    re11 = "((?:[a-z][a-z]+))" # Word 3
    re12 = "(\\s+)" # White Space 5
    re13 = "((?:[a-z][a-z]+))" # Word 4
    re14 = "(\\s+)" # White Space 6
    re15 = "((?:[a-z][a-z]+))" # Word 5
    re16 = "(\\s+)" # White Space 7
    re17 = "((?:[a-z][a-z]+))" # Word 6
    re18 = "(\\s+)" # White Space 8
    re19 = "(with)" # Variable Name 1
    re20 = "(\\s+)" # White Space 9
    re21 = "((?:[a-z][a-z]+))" # Variable Name 2
    re22 = "(\\s+)" # White Space 10
    re23 = "(of)" # Word 7
    re24 = "(\\s+)" # White Space 11
    re25 = "(\\w+)" # Integer Number 1
    p = new RegExp(re1 + re2 + re3 + re4 + re5 + re6 + re7 + re8 + re9 + re10 + re11 + re12 + re13 + re14 + re15 + re16 + re17 + re18 + re19 + re20 + re21 + re22 + re23 + re24 + re25, ["i"])
    m = p.exec(@txt)
    if m[1] = re1
      foo = command:
        ###jamesStart : m[1] + m[3] + m[4] + m[5]###


        ###ws2 : m[6]###
        method : m[7]
        isNew : if m[10] is "new" or "merge" then true else throw "I'm sorry sir, but if this is not a new #{m[12]}, please use the update request instead"

        label : m[12].toUpperCase()

        name : m[16]
        ###ws8 : m[17]###
        props:
          "#{m[20]}: #{m[24]}"

      foo.command.uuid = uuid.v4()
      console.log foo
      return foo

module.exports = Create
###
Create "james --> create a new Dog named Fred with age of 12"###

