var
socket = new WebSocket('ws://localhost:8080/');
socket.onmessage = function(event) {
  var message = $.parseJSON(event.data);

  $('#events table')
    .append('<tr><td>' + message.name + ' has entered the room.</td></tr>');
};
