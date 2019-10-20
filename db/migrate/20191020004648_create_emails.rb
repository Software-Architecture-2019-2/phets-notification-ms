class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :user_id
      t.string :user_email
      t.text :mail_subject
      t.text :mail_body

      t.timestamps
    end
  end
end
