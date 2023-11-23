class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :title
      t.string :address
      t.float :longitude
      t.float :latitude
      t.float :price
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
