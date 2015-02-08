# NOTE: You *MUST* plug the LCD into an I2C slot or this will not work!

writeToScreen = (screen, message) ->
  screen.setCursor 0, 0
  screen.write message

# Cylon = require('cylon')
moment = require('moment')
io = require('socket.io-client')('http://127.0.0.1:5000');

# Cylon
#   .robot()
#   .connection('edison', adaptor: 'intel-iot')
#   .device('screen', driver: 'upm-jhd1313m1', connection: 'edison')
#   .device('button', driver: 'button', pin: 4, connection: 'edison')
#   .on 'ready', (my) ->
#     setInterval ->
#       writeToScreen my.screen, moment().format('h:mm:ss a')
#     my.button.on 'release', ->
#       console.log 'button'
#       writeToScreen my.screen, 'button'
#   .start()

socket = io.connect();
console.log(socket)
socket.on 'connect', -> 
    console.log 'connected.'

socket.on 'song-finished', (data) -> 
    console.log "finish me please."
