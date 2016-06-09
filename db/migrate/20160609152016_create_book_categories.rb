class CreateBookCategories < ActiveRecord::Migration
  def change
    create_table :book_categories do |t|
      t.integer :book_id, null: false
      t.integer :category_id, null: false
    end
  end
end
