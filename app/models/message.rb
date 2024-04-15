class Message < ApplicationRecord
  default_scope { order(created_at: :asc) }
  belongs_to :channel
  belongs_to :user
end
