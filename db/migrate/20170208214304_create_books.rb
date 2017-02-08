class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.column :name, :string
      t.column :image, :string
      t.column :author, :string

      t.timestamps
    end
  end
end
