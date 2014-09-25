class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :book_name
      t.integer :old_price
      t.integer :new_price

      t.timestamps
    end
  end
end
