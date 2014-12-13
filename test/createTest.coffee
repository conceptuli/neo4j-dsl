Create = require '../lib/rels.coffee'

exports.createTest =
  'test returns an object': (test) ->
    create = Create
    node = {}
    newCreate = 'james --> create a new Dog named Fred with age of 12'
    result  = create newCreate
    test.equal result,
    test.done()