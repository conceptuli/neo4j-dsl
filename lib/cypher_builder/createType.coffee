cypher = require '../cypher'
transaction = cypher.transaction()
uuid = require 'node-uuid'
class TypeFactory
  constructor: (@type, parents) ->
    @uuid = uuid.v4()

    @commit = transaction.commit()

    @label = @type.toUpperCase()

    @plabel = for parent in parents

      ':' + parent.toUpperCase()

    @parents = @plabel.join(" ")

    @thingType =  "MERGE (a#{@parents} {id:'#{@type}'}) ON CREATE set a.uuid = '#{@uuid}' on match set a.lastUsed = timestamp() return a"

    write = (statement) ->
      transaction.write(statement)
      @commit

    write @thingType

module.exports = TypeFactory





