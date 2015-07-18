class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      # precision = max amount to charge car is one penny short of one million
      t.decimal :price, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
