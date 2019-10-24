class CreateClimbs < ActiveRecord::Migration[6.0]
  def change
    create_table :climbs do |t|
      t.string :name
      t.string :location
      t.integer :length
      t.integer :difficulty

      t.timestamps
    end
  end
end
