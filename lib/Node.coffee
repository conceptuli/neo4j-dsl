uuid = require 'node-uuid'
randomString = require 'make-random-string'
props = {}

addProperty = (k,v) ->
  props[k]= v


class Node
  constructor: ->
    require('node-uuid')

    @node =
      method: 'CREATE'
      type: 'Thing'.toUpperCase()
      properties: @props={}
      uuid: uuid.v4()
    @props=props


  type: (newType) ->
    @node.type = newType.toUpperCase()
    @

  properties: (props) ->
    prop = for k,v of props
     k=v
    @node.properties = props
    this


  withMethod: (newMethod) ->
    @node.method = newMethod
    this

  withReturn: (wr) ->
    switch wr
      when 'true'
        @wr = "return "

      when 'false'
        @wr =  null

    this

  withProp: (k,v) ->
    @props[k]=v
    @
  build: ()->

    method = @node.method
    label = @node.type
    params = @node.properties
    uuid = @node.uuid
    wr = @wr
    id = randomString(4, 'abcdefghijklmnopqrstuvwxyz')
    suf = (wr, id) ->
    if wr isnt null then suf = wr + ' ' + id
    if wr is null then suf = ''


    @.cypher = "#{method} (#{id}:#{label} {#{params}, uuid:\"#{uuid}\"}) #{suf}"



    return r =@.node

module.exports = Node

x = new Node().type('Ding')
x

x.properties(props).withMethod('MERGE').build()
x.props
x.withProp 'd', 'ss'
x.withProp 's', 'df'
x.properties(props).withMethod('MERGE').withReturn('true').build()

console.log x