import consumer from "./consumer"

const ENTER_KEY = 13;

$(function() {
  const chatChannel = consumer.subscriptions.create({ channel: 'ThreadChannel', thread_board: $('#messages').data('thread_board_id') }, {
    connected() {
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received: function(data) {
      console.log("message recieved!")
      return $('#messages').append(data['message']);
    },

    speak: function(message) {
      return this.perform('speak', {
        message: message
      });
    }
  });

  $(document).on('keypress', '[data-behavior~=thread_board_speaker]', function(event) {
    if (event.keyCode === ENTER_KEY) {
      chatChannel.speak(event.target.value);
      event.target.value = '';
      return event.preventDefault();
    }
  });
});