class AddReadersToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :reader_id, :integer
  end
end
