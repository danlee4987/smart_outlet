var http = require('http');

exports.handler = (event, context, callback) => {
    if (event.session.application.applicationId !== 'amzn1.ask.skill.5400a506-c431-4691-b630-c85b13882a40') {
         callback('Invalid Application ID');
    }
    
    var value = '';
    switch(event.request.intent.slots.Value.value) {
        case 'on':
            value = 'button1';
            break;
        default:
            value = 'button2';
            break;
    }
    
    var postData = JSON.stringify({
        value : 'Turn On'
    });

    var options = {
        hostname: '647199ee.ngrok.io',
        port: '80',
        path: '/smartDevices/FirstServlet',
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
            'Content-Length': Buffer.byteLength(postData)
        }
    };

    var req = http.request(options, (res) => {
        console.log(`STATUS: ${res.statusCode}`);
        console.log(`HEADERS: ${JSON.stringify(res.headers)}`);
        res.setEncoding('utf8');
        res.on('data', (chunk) => {
            callback(null, {
                "version": "1.0",
                "response": {
                    "outputSpeech": {
                        "text": "",
                        "type": "PlainText"
                    },
                    "shouldEndSession": false
                }
            });
        });
        res.on('end', () => {
            callback(null, {
                "version": "1.0",
                "response": {
                    "outputSpeech": {
                        "text": "",
                        "type": "PlainText"
                    },
                    "shouldEndSession": false
                }
            });
        });
    });

    req.on('error', (e) => {
            callback(null, {
                "version": "1.0",
                "response": {
                    "outputSpeech": {
                        "text": e,
                        "type": "PlainText"
                    },
                    "shouldEndSession": false
                }
            });
    });

    req.write(postData);
    req.end();
};
