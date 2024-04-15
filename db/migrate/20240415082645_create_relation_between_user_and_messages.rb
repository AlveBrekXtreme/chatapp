class CreateRelationBetweenUserAndMessages < ActiveRecord::Migration[7.0]
  def change
    change_table :messages do |t|
      t.belongs_to :user
    end
  end
end
