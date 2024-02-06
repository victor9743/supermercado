class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.string :descricao, null: false
      t.integer :preco, null: false
      t.integer :qtd_estoque, null: false

      t.timestamps
    end
  end
end
