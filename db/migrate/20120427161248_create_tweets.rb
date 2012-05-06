class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :author
      t.text :comment
      t.integer :post_id
      t.integer :user_id

      t.timestamps
    end
  end
end
