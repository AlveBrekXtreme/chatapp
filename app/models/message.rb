class Message < ApplicationRecord

  after_create_commit {broadcast_replace_to :show_messages, target: self.channel.created_at , partial: 'messages/channel_messages', locals: { channel: self.channel } }


  default_scope { order(created_at: :asc) }
  belongs_to :channel
  belongs_to :user
end
