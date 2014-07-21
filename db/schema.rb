# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140719190941) do

  create_table "adm_banners", force: true do |t|
    t.string   "titulo"
    t.string   "imagem"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adm_galerias", force: true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.string   "imagem_capa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adm_galerias_imagens", force: true do |t|
    t.integer  "galeria_id"
    t.string   "imagem"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adm_noticias", force: true do |t|
    t.string   "titulo"
    t.text     "subtitulo"
    t.text     "content"
    t.string   "img_capa"
    t.string   "autor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adm_videos", force: true do |t|
    t.string   "titulo"
    t.string   "url_codigo", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
