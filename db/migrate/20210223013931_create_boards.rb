class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :name,        null: false, limit: 250
      t.text :description
      t.references :parent

      t.timestamps
    end
  end
end
