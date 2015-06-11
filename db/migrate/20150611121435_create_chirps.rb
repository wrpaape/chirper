class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :title
      t.string :body
      t.string :topic
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
