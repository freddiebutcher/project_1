class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.text :show_name
      t.text :episode_name
      t.text :episode_description
      t.text :pod_link
      t.text :img_link
      t.timestamps
    end
  end
end
