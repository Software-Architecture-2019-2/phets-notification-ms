class CreateNoties < ActiveRecord::Migration[5.2]
  def change
    create_table :noties do |t|
      t.string :notification_id
      t.string :user_id
      t.text :notification_body
      t.integer :notification_state
      t.integer :notification_type

      t.timestamps
    end
  end
end
