class ThreadChannel < ApplicationCable::Channel
  def subscribed
    stream_from "thread_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # ßActionCable.server.broadcast 'thread_channel', message: data['message']
    Message.create! content: data['message']
  end
end
