class CreateClimbers < ActiveRecord::Migration[6.0]
  def change
    create_table :climbers do |t|
      t.string :name

      t.timestamps
    end
  end
end
