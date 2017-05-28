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

ActiveRecord::Schema.define(version: 20170528022420) do

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

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "contraseña"
    t.string   "foto"
    t.string   "mail"
    t.integer  "telefono"
    t.integer  "puntaje"
    t.integer  "idReputacion"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "favors", "usuarios"
end
