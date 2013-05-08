http = require 'http'
server = http.createServer (request, response) ->
  response.writeHead(200, {'Content-Type': 'application/json','Access-Control-Allow-Origin' : '*', 'Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept'})
  jsonObj = []
  jsonObj.push({name: 'claudia', url: 'claudia url'})
  jsonObj.push({name: 'rita', url: 'rita url'})
  response.end JSON.stringify(jsonObj)
server.listen 4000

console.log " JSON Server running at http://127.0.0.1:4000/"
