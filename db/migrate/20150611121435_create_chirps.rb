class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :title, default: "", null: false
      t.string :body, default: "", null: false
      t.string :topic, default: "#misc"
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
