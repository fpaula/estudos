class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :titulo
    end
  end

  def down
    drop_table :posts
  end
end
