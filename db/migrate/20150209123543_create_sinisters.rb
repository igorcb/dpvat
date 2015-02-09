class CreateSinisters < ActiveRecord::Migration
  def change
    create_table :sinisters do |t|
      t.references :client, index: true
      t.string :data
      t.string :sinistro
      t.date :data_acidente
      t.string :seguradora
      t.decimal :valor, precision: 10, scale: 2
      t.decimal :comissao_percentual, precision: 10, scale: 2
      t.decimal :comissao, precision: 10, scale: 2
      t.date :data_recebimento
      t.decimal :valor_recebido, precision: 10, scale: 2
      t.integer :status

      t.timestamps null: false
    end
    add_foreign_key :sinisters, :clients
  end
end
