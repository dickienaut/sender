class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.integer :article_id
      t.integer :climber_id

      t.timestamps
    end
  end
end
