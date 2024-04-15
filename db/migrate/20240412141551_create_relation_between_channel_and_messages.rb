class CreateRelationBetweenChannelAndMessages < ActiveRecord::Migration[7.0]
  def change
    change_table :messages do |t|
      t.belongs_to :channel
    end
  end
end
