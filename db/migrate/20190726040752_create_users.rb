class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email_address
      t.text :password
      t.text :username
      t.text :first_name
      t.text :last_name
      t.text :user_bio
      t.timestamps
    end
  end
end
