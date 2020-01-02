class ThreadChannel < ApplicationCable::Channel
  def subscribed
    stream_from "thread_channel_#{params['thread_board']}" 
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # ActionCable.server.broadcast 'thread_channel', message: data['message']
    Message.create! content: data['message'], user_id: current_user.id, thread_board_id: params['thread_board']
  end
end
