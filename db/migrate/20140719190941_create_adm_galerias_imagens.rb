class CreateAdmGaleriasImagens < ActiveRecord::Migration[5.2]
  def change
    create_table :adm_galerias_imagens do |t|
      t.integer :galeria_id
      t.string :imagem

      t.timestamps
    end
  end
end
