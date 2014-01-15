class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :ISBN10
      t.integer :ISBN13
      t.integer :rank

      t.timestamps
    end
  end
end
