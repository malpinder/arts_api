class CreateExhibitions < ActiveRecord::Migration
  def change
    create_table :exhibitions do |t|
      t.references :gallery
      t.string :name
      t.text :description
      t.integer :entry_fee
      t.integer :max_tickets
      t.datetime :opens_on
      t.datetime :closes_on

      t.timestamps
    end
  end
end
