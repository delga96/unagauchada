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

ActiveRecord::Schema.define(version: 0) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categoria", primary_key: "idcategoria", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
  end

  create_table "compra", primary_key: "idcompra", force: :cascade do |t|
    t.integer "cantidad",       null: false
    t.integer "monto_unitario", null: false
    t.integer "monto_total",    null: false
    t.date    "fecha",          null: false
    t.integer "idregistrado"
    t.integer "idcredito"
  end

  create_table "credito", primary_key: "idcredito", force: :cascade do |t|
    t.integer "valor", null: false
  end

  create_table "favor", primary_key: "idfavor", force: :cascade do |t|
    t.string  "titulo",       limit: 50, null: false
    t.string  "descripcion",  limit: 50, null: false
    t.string  "foto",         limit: 50, null: false
    t.string  "ciudad",       limit: 50, null: false
    t.date    "fecha_limite",            null: false
    t.integer "iddueño"
  end

  create_table "moderador", primary_key: "idmoderador", force: :cascade do |t|
    t.string  "nombre",     limit: 50, null: false
    t.string  "apellido",   limit: 50, null: false
    t.string  "contraseña", limit: 50, null: false
    t.string  "foto",       limit: 50
    t.string  "mail",       limit: 50, null: false
    t.integer "telefono",              null: false
  end

  create_table "pertenece", primary_key: "idpertenece", force: :cascade do |t|
    t.integer "idfavor"
    t.integer "idcategoria"
  end

  create_table "postula", primary_key: "idpostula", force: :cascade do |t|
    t.integer "iddueño"
    t.integer "idpostulante"
  end

  create_table "pregunta", primary_key: "idpregunta", force: :cascade do |t|
    t.string "descripcion", limit: 50, null: false
  end

  create_table "registrado", primary_key: "idregistrado", force: :cascade do |t|
    t.string  "nombre",       limit: 50, null: false
    t.string  "apellido",     limit: 50, null: false
    t.string  "contraseña",   limit: 50, null: false
    t.string  "foto",         limit: 50
    t.string  "mail",         limit: 50, null: false
    t.integer "telefono",                null: false
    t.integer "puntaje",                 null: false
    t.integer "idreputacion"
  end

  create_table "reputacion", primary_key: "idreputacion", force: :cascade do |t|
    t.integer "valor_minimo",            null: false
    t.integer "valor_maximo",            null: false
    t.string  "nombre",       limit: 50, null: false
  end

  create_table "respuesta", primary_key: "idrespuesta", force: :cascade do |t|
    t.string  "descripcion", limit: 50, null: false
    t.integer "idpregunta"
  end

  create_table "tiene", primary_key: "idtiene", force: :cascade do |t|
    t.integer "idpregunta"
    t.integer "idfavor"
    t.integer "idregistrado"
  end

  add_foreign_key "compra", "credito", column: "idcredito", primary_key: "idcredito", name: "compra_idcredito_fkey"
  add_foreign_key "compra", "registrado", column: "idregistrado", primary_key: "idregistrado", name: "compra_idregistrado_fkey"
  add_foreign_key "favor", "registrado", column: "iddueño", primary_key: "idregistrado", name: "favor_iddueño_fkey"
  add_foreign_key "pertenece", "categoria", column: "idcategoria", primary_key: "idcategoria", name: "pertenece_idcategoria_fkey"
  add_foreign_key "pertenece", "favor", column: "idfavor", primary_key: "idfavor", name: "pertenece_idfavor_fkey"
  add_foreign_key "postula", "registrado", column: "iddueño", primary_key: "idregistrado", name: "postula_iddueño_fkey"
  add_foreign_key "postula", "registrado", column: "idpostulante", primary_key: "idregistrado", name: "postula_idpostulante_fkey"
  add_foreign_key "registrado", "reputacion", column: "idreputacion", primary_key: "idreputacion", name: "registrado_idreputacion_fkey"
  add_foreign_key "respuesta", "pregunta", column: "idpregunta", primary_key: "idpregunta", name: "respuesta_idpregunta_fkey"
  add_foreign_key "tiene", "favor", column: "idfavor", primary_key: "idfavor", name: "tiene_idfavor_fkey"
  add_foreign_key "tiene", "pregunta", column: "idpregunta", primary_key: "idpregunta", name: "tiene_idpregunta_fkey"
  add_foreign_key "tiene", "registrado", column: "idregistrado", primary_key: "idregistrado", name: "tiene_idregistrado_fkey"
end
