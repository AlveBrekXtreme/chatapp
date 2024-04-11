class CreateChannel < ActiveRecord::Migration[7.0]
  def change
    create_table :channels do |t|
      t.string :name

      t.timestamps
    end
    add_index :channels, :name
  end
end
