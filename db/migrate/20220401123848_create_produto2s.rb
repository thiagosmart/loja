class CreateProduto2s < ActiveRecord::Migration[7.0]
  def change
    create_table :produto2s do |t|
      t.string :sku
      t.string :produto
      t.integer :vendas
      t.integer :quantidade
      t.float :valor
      t.integer :visitas
      t.string :anuncio

      t.timestamps
    end
  end
end
