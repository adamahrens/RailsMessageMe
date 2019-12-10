App.chatroom = App.cable.subscriptions.create "ChatroomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server
    console.log('Connected to chatroom channel')

  disconnected: ->
    # Called when the subscription has been terminated by the server
    console.log('Disconnected from chatroom channel')

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel
    console.log('Received chatroom data')
    # Append the rendered partial
    $('.feed').append(data)
