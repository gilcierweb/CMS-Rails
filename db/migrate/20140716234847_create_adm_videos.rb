class CreateAdmVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :adm_videos do |t|
      t.string :titulo
      t.string :url_codigo, limit: 30

      t.timestamps
    end
  end
end
