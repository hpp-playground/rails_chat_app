class Message < ApplicationRecord
    validates :content, presence: true
    after_create_commit { MessageBroadcastJob.perform_later self }
    belongs_to :user
    belongs_to :thread_board
end
