cypher = require('cypher-stream')('http://localhost:7474')



class UniqueProperty
  constructor: (@label, @property) ->
    @lowerLabel = @label.toLowerCase()
    @upperLabel = @label.toUpperCase()
    @labelThing = "#{@lowerLabel}:#{@upperLabel}"
    @uniqueProperty = "#{@lowerLabel}.#{@property}"
    cypher "create constraint on (#{@lowerLabel}:#{@upperLabel}) assert #{@uniqueProperty} is unique"
      .on 'error', (error) ->
        throw error
      .on 'data', (result) ->
        console.log result
      .on 'end', ->
        msg = msg: 'created new unique constraint'
        console.log msg
        return msg

  drop:  ->
    cypher "drop constraint on (#{@lowerLabel}:#{@upperLabel}) assert #{@uniqueProperty} is unique"
      .on 'error', (error) ->
        throw error
      .on 'data', (result) ->
        console.log result
        return result
      .on 'end', ->
        msg = msg: 'dropped unique constraint'
        console.log msg
        return msg


module.exports = UniqueProperty

