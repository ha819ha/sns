class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :user
      t.string :content

      t.timestamps
    end
  end
end