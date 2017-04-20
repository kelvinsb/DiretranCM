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

ActiveRecord::Schema.define(version: 20170420204339) do
ActiveRecord::Schema.define(version: 20170420144151) do

ActiveRecord::Schema.define(version: 20170420204552) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bairros", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categoria", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "documentos", force: :cascade do |t|
    t.string   "rg"
    t.string   "cpf"
    t.string   "cid"
    t.string   "foto"
    t.string   "comp_residencia"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "estados", force: :cascade do |t|
    t.string   "nome"
    t.string   "uf"


  create_table "datalogs", force: :cascade do |t|
    t.string   "valor_anterior"
    t.string   "valor_atual"
    t.string   "campo_alterado"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "logins", force: :cascade do |t|
    t.string   "login"
    t.string   "senha"

  create_table "cidades", force: :cascade do |t|
    t.string   "nome"

    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end


  create_table "funcionarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false


  create_table "cids", force: :cascade do |t|
    t.string   "cod_doenca"
    t.string   "nome_doenca"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false

  end

end
