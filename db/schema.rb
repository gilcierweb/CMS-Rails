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

ActiveRecord::Schema.define(version: 20150712232246) do

  create_table "adm_banners", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.string   "imagem",     limit: 255
    t.string   "link",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adm_galerias", force: :cascade do |t|
    t.string   "titulo",      limit: 255
    t.text     "descricao",   limit: 65535
    t.string   "imagem_capa", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adm_galerias_imagens", force: :cascade do |t|
    t.integer  "galeria_id", limit: 4
    t.string   "imagem",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adm_noticias", force: :cascade do |t|
    t.string   "titulo",      limit: 255
    t.text     "subtitulo",   limit: 65535
    t.text     "descricao",   limit: 4294967295
    t.string   "imagem_capa", limit: 255
    t.string   "autor",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "adm_paginas", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.text     "content",    limit: 65535
    t.string   "meta",       limit: 255
    t.string   "img_capa",   limit: 255
    t.string   "status",     limit: 30
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "adm_videos", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.string   "url_codigo", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "auth_roles", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.string   "title",       limit: 255,   null: false
    t.text     "description", limit: 65535, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role_id",                limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

end
