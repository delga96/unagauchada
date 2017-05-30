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

ActiveRecord::Schema.define(version: 20170530174817) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "compras", force: :cascade do |t|
    t.string "usuarios"
    t.string "creditos"
  end

  create_table "creditos", force: :cascade do |t|
    t.integer  "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favors", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.string   "foto"
    t.string   "ciudad"
    t.date     "fecha_limite"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "usuario_id"
  end

  create_table "moderadors", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "contraseña"
    t.string   "foto"
    t.string   "mail"
    t.integer  "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrarses", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "mail"
    t.string   "contraseña"
    t.string   "telefono"
    t.string   "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "telefono",               limit: 8
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "credito",                          default: 1
    t.integer  "puntaje",                          default: 0
  end

  add_index "users", ["apellido"], name: "index_users_on_apellido", using: :btree
  add_index "users", ["credito"], name: "index_users_on_credito", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["nombre"], name: "index_users_on_nombre", using: :btree
  add_index "users", ["puntaje"], name: "index_users_on_puntaje", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["telefono"], name: "index_users_on_telefono", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "foto"
    t.integer  "puntaje"
    t.integer  "idReputacion"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "email"
    t.string   "nombre"
    t.string   "apellido"
    t.integer  "telefono"
  end

  add_index "usuarios", ["apellido"], name: "index_usuarios_on_apellido", using: :btree
  add_index "usuarios", ["email"], name: "index_usuarios_on_email", using: :btree
  add_index "usuarios", ["nombre"], name: "index_usuarios_on_nombre", using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  add_index "usuarios", ["telefono"], name: "index_usuarios_on_telefono", using: :btree

  add_foreign_key "favors", "usuarios"
end
