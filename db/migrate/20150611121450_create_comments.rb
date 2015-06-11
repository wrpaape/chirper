class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :body
      t.integer :rating
      t.belongs_to :chirp, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
