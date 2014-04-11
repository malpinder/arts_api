class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :name
      t.text :description
      t.text :address
      t.integer :opening_hour
      t.integer :closing_hour

      t.timestamps
    end
  end
end
