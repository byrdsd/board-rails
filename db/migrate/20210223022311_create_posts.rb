class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :name,           null: false, limit: 250
      t.text :body,           null: false
      t.references :user,      null: false
      t.references :board,     null: false

      t.timestamps
    end
  end
end
