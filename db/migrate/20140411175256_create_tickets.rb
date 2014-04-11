class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.references :exhibition
      t.datetime :entry_at
      t.string :name

      t.timestamps
    end
  end
end
