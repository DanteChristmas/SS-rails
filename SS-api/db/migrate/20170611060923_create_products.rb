class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.integer :type
      t.integer :status
      t.boolean :available
      t.boolean :published
      t.datetime :available_since
      t.datetime :published_since

      t.text :name
      t.text :description
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
