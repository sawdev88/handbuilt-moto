class CreateShopTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :shop_todos do |t|
      t.text :note
      t.string :priority

      t.timestamps
    end
  end
end
