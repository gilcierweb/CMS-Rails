class CreateAdmVideos < ActiveRecord::Migration
  def change
    create_table :adm_videos do |t|
      t.string :titulo
      t.string :codigo, limit: 30

      t.timestamps
    end
  end
end
