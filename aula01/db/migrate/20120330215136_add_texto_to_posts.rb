class AddTextoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :texto, :string
  end
end
