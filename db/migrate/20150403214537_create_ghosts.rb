class CreateGhosts < ActiveRecord::Migration
  def change
    create_table :ghosts do |t|
      t.integer :card_id
      t.string :planet
      t.string :location

      t.timestamps
    end
  end
end
