class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :genre
      t.string :story

      t.timestamps
    end
  end
end
