express = require 'express'
app = express()

#Provides the json
app.get '/phones/phones.json', (req, res, next) ->
	console.log 'Get request called for the url /phones/phones.json'
	res.header('Content-Type': 'application/json')
	jsonObj = []
	jsonObj.push({name: 'claudia', url: 'claudia url'})
	jsonObj.push({name: 'rita', url: 'rita url'})
	res.end JSON.stringify(jsonObj)

#Provides the static files
app.configure () ->
	app.use "/", express.static 'public'
app.listen 3000

#Print out a friendly message
console.log "Web Server running at http://127.0.0.1:3000/"