class CreateAdmNoticias < ActiveRecord::Migration
  def change
    create_table :adm_noticias do |t|
      t.string :titulo
      t.text :subtitulo
      t.text :content
      t.string :img_capa
      t.string :autor

      t.timestamps
    end
  end
end
