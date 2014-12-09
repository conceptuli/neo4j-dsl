####class creates and drops indexes in neo4j on specific label/property combinations - (c) 2014 Conceptuli, LLC ###




cypher = require './cypher'

class NodeIndex
  constructor: (@label, @property) ->
    @upperLabel = @label.toUpperCase()
    @indexProperty = "#{@upperLabel}(#{@property})"
    cypher "create index on :#{@indexProperty}"
      .on 'error', (error) ->
        throw error
      .on 'data', (result) ->
        console.log result
      .on 'end', ->
        msg =
          msg: "index created on #{@indexProperty}"
        console.log msg
        return msg

  drop: ->
    cypher "drop index on :#{@indexProperty}"
    cypher "$<cypher_statement>$"
      .on 'error', (error) ->
        throw error
      .on 'data', (result) ->
        console.log result
      .on 'end', ->
        msg =
          msg: "dropped index on #{@indexProperty}"
        console.log msg
        return msg


module.exports = NodeIndex


