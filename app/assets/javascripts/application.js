window.socket = new WebSocket("ws://localhost:8080/");
window.socket.addEventListener("message", function(event) {
  var message = $.parseJSON(event.data);

  $("#events table")
    .append(
      $("<tr>").append(
        $("<td>", { text: message.name + " has entered the room." })
      )
    );
}, false);
