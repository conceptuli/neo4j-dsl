ParamList = require '../lib/ParamList.js'


x = new ParamList('foo')
x.add 'name', 'Brian'
console.log x

x.drop 'name'
console.log x

x.updateOrCreate 'name', 'Bob'
console.log x