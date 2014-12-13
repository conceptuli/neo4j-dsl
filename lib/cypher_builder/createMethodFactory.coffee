class createMethod
  constructor: (cm) ->
    switch cm
      when 'create'
        @method = "CREATE"

      when 'createUnique'
        @method = "MERGE"
    return cm:@method
module.exports = createMethod