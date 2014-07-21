class AddColumnImagemCapaToAdmGalerias < ActiveRecord::Migration
  def change
    add_column :adm_galerias, :imagem_capa, :string
  end
end
