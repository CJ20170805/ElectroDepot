class CreateAddresses < ActiveRecord::Migration[7.2]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
