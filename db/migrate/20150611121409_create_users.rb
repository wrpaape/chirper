class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, default: "", null: false
      t.string :password, default: "", null: false
      t.string :handle, default: "", null: false

      t.timestamps null: false
    end
  end
end
