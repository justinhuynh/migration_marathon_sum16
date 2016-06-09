class ActuallySplitReaderNames < ActiveRecord::Migration
  def up
    Reader.all.each do |reader|
      split_name = reader.full_name.split(" ")
      first_name = split_name.first
      last_name = split_name.last
      reader.first_name = first_name
      reader.last_name = last_name
      reader.save!
    end
    remove_column :readers, :full_name
  end

  def down
    add_column :readers, :full_name, :string

    Reader.all.each do |reader|
      full_name = [ reader.first_name, reader.last_name ].join(" ")
      reader.full_name = full_name
      reader.save!
    end
  end
end
