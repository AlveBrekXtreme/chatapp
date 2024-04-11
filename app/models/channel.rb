class Channel < ApplicationRecord
  validates :name, format: { multiline: true, without: /^(?=\s*$)/ }
end