class AddRatingToBooks < ActiveRecord::Migration
  def up
    add_column :books, :rating, :integer
  end

  def down
    remove_column :books, :rating
  end
end
