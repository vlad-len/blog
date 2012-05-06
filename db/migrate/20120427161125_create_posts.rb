class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.text :title
      t.text :body
      t.string :user_id

      t.timestamps
    end
  end
end
