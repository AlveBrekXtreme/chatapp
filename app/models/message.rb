class Message < ApplicationRecord

  after_create_commit {broadcast_append_to :show_messages, target: self.channel.created_at , partial: 'messages/message', locals: { message: self, self_user: self.user } }


  default_scope { order(created_at: :desc) }
  belongs_to :channel
  belongs_to :user
end
