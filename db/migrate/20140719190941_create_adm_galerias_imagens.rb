class CreateAdmGaleriasImagens < ActiveRecord::Migration
  def change
    create_table :adm_galerias_imagens do |t|
      t.integer :galeria_id
      t.string :imagem

      t.timestamps
    end
  end
end
