<html>
<head>
<title>HOME PAGE</title>
<meta name="viewport content=" width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">  
<link href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" /> 
<link
	href="https://cdnjs.cloudflare.com/ajax/libsl/twitter-bootstrap/4.0.0-alpha/css/bootstrap.min.css"
	rel="stylesheet" />

<link
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.0.0-alpha/css/bootstrap.css"
	rel="stylesheet" />
	<script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
 
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.3.3/angular.min.js"></script>
<script type="text/javascript">
	var ws;
	$(document).ready(
			function() {
				ws = new WebSocket("ws://localhost:8080/chat");
				ws.onopen = function(event) {
					
				}
				ws.onmessage = function(event) {
					var $textarea = $('#messages');
					var json = JSON.parse(event.data);
					$textarea.val($textarea.val() + json.username + ": " + json.message + "\n");
					$textarea.animate({
						scrollTop : $textarea.height()
					}, 1000);
				}
				ws.onclose = function(event) {
					
				}
			});
	function sendMessage() {
		var message = {
			    "username": $('#username').val(),
			    "message": $('#message').val() 
			}
		ws.send(JSON.stringify(message));
		$('#message').val('');
	}
	</script>
</head>
<body>

	<div id="body">
		<div id="menu">
			<p class="welcome">
				User: <input id="username" value="anonymous" />
			</p>
			<div style="clear: both"></div>
		</div>
		<div id="chatbox">
			<textarea id="messages" rows="16" cols="50" readonly="readonly"></textarea>
		</div>
		<form name="message" action="">
			<input name="usermsg" type="text" id="message" size="63" /> <input
				type="button" name="submitmsg" value="Send..."
				onclick="sendMessage();" />
		</form>
	</div>
	</body>
	</html>