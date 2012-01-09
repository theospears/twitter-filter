var httpProxy = require('http-proxy');
var connect = require('connect');
var fs = require('fs');

var options = {
	hostnameOnly: true,
	router: {
		'api.twitter.com': '199.59.148.87:443',
		'stream.twitter.com': '199.59.148.138:443',
		'sitestream.twitter.com': '199.59.148.137:443',
		'userstream.twitter.com': '199.59.148.139:443'
	},
	https: {
		key: fs.readFileSync('cert/server.key', 'utf8'),
		cert: fs.readFileSync('cert/server.crt', 'utf8')
	},
	target: {
		https: true
	}
};

httpProxy.createServer(connect.logger('[:date] :method :req[Host] :url :status'), options).listen(443);
