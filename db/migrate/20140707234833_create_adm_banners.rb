class CreateAdmBanners < ActiveRecord::Migration
  def change
    create_table :adm_banners do |t|
      t.string :titulo
      t.string :imagem
      t.string :link

      t.timestamps
    end
  end
end
