class Channel < ApplicationRecord
  has_many :messages
  validates :name, format: { multiline: true, without: /^(?=\s*$)/ }
end