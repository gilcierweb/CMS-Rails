class CreateAdmGalerias < ActiveRecord::Migration
  def change
    create_table :adm_galerias do |t|
      t.string :titulo
      t.text :descricao
      t.string :imagem_capa

      t.timestamps
    end
  end
end
