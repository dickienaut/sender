class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :climber_id
      t.integer :climb_id
      t.text :text

      t.timestamps
    end
  end
end
