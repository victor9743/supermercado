class CreateListaCompras < ActiveRecord::Migration[7.1]
  def change
    create_table :lista_compras do |t|
      t.integer :produto_id
      t.integer :qtd
      t.integer :preco_final

      t.timestamps
    end
  end
end
