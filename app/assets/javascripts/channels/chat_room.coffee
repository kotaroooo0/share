$(document).on 'keypress', '[data-behavior~=chat_room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.chat_room.speak event.target.value, location.pathname.split('/')[4]
    event.target.value = ''
    event.preventDefault()


App.chat_room = App.cable.subscriptions.create "ChatRoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').append data['message']

  speak: (message, chat_room_id) ->
    @perform 'speak', message: message, chat_room_id: chat_room_id
