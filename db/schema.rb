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

ActiveRecord::Schema.define(version: 2015_07_12_232246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adm_banners", force: :cascade do |t|
    t.string "titulo"
    t.string "imagem"
    t.string "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adm_galerias", force: :cascade do |t|
    t.string "titulo"
    t.text "descricao"
    t.string "imagem_capa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adm_galerias_imagens", force: :cascade do |t|
    t.integer "galeria_id"
    t.string "imagem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adm_noticias", force: :cascade do |t|
    t.string "titulo"
    t.text "subtitulo"
    t.text "descricao"
    t.string "imagem_capa"
    t.string "autor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "adm_videos", force: :cascade do |t|
    t.string "titulo"
    t.string "url_codigo", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "auth_roles", force: :cascade do |t|
    t.string "name", null: false
    t.string "title", null: false
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.string "title", null: false
    t.text "description", null: false
    t.json "the_role", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

end
