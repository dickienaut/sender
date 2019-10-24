class CreateTicks < ActiveRecord::Migration[6.0]
  def change
    create_table :ticks do |t|
      t.integer :climber_id
      t.integer :climb_id


      t.timestamps
    end
  end
end
