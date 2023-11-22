class CreateAppartements < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :address
      t.string :descritpion
      t.float :price
      t.float :longitude
      t.float :latitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
