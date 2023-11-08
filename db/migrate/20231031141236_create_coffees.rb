class CreateCoffees < ActiveRecord::Migration[7.0]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :coffee_origin
      t.string :roaster_location
      t.string :aroma
      t.integer :roast_level
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
