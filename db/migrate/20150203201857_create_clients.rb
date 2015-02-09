class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :cep
      t.string :sexo
      t.integer :estado_civil
      t.date :data_nascimento
      t.string :cpf
      t.string :rg

      t.timestamps null: false
    end
  end
end
