import consumer from "./consumer"

const ENTER_KEY = 13;

const chatChannel = consumer.subscriptions.create("ThreadChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    return $('#messages').append(data['message']);
  },

  speak: function(message) {
    return this.perform('speak', {
      message: message
    });
  }
});

$(document).on('keypress', '[data-behavior~=room_speaker]', function(event) {
  if (event.keyCode === ENTER_KEY) {
    chatChannel.speak(event.target.value);
    event.target.value = '';
    return event.preventDefault();
  }
});