###
cypher = require './cypher'
log = console.log
inflection = require 'inflection'
class Create
  constructor: (@label) ->
    @props = {}

    @label = ':' + label.toUpperCase()
    log @label
    cypher "CREATE (n#{@label} ) return n"
      .on 'data', (result) ->
        log result
      .on 'end', ->
        log 'done'

  addProp: (@n,@v) ->
    @props[@n] = @v
    this
x = new Create 'foo'
x.addProp 'name', 'Bob'
x.addProp 'age', '12'

###

###

console.log x.propsList
###

