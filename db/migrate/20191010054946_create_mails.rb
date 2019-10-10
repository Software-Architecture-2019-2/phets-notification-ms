class CreateMails < ActiveRecord::Migration[5.2]
  def change
    create_table :mails do |t|
      t.string :user_id
      t.string :user_mail
      t.string :mail_subject
      t.text :mail_body

      t.timestamps
    end
  end
end
