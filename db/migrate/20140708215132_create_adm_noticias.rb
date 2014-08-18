class CreateAdmNoticias < ActiveRecord::Migration
  def change
    create_table :adm_noticias do |t|
      t.string :titulo
      t.text :subtitulo
      t.text :descricao
      t.string :imagem_capa
      t.string :autor

      t.timestamps
    end
  end
end
