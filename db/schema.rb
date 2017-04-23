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

ActiveRecord::Schema.define(version: 20170425013947) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bairros", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carteirinhas", force: :cascade do |t|
    t.integer  "via"
    t.string   "status"
    t.datetime "data_criacao"
    t.date     "data_vencimento"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "categoria_id"
    t.integer  "cid_id"
  end

  create_table "categoria", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cidades", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cids", force: :cascade do |t|
    t.string   "cod_doenca"
    t.string   "nome_doenca"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "datalogs", force: :cascade do |t|
    t.integer  "valor_anterior"
    t.integer  "valor_atual"
    t.integer  "campo_alterado"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "log_id"
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

  create_table "enderecos", force: :cascade do |t|
    t.integer  "numero"
    t.string   "cep"
    t.string   "complemento"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "estado_id"
    t.integer  "cidade_id"
    t.integer  "logradouro_id"
    t.integer  "bairro_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string   "nome"
    t.string   "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "login_id"
    t.integer  "pessoa_id"
  end

  create_table "logins", force: :cascade do |t|
    t.string   "nome"
    t.string   "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logradouros", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "logs", force: :cascade do |t|
    t.string   "motivo"
    t.date     "data"
    t.time     "hora"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "requisicao_id"
    t.integer  "pessoa_id"
  end

  create_table "pessoas", force: :cascade do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "rg"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "login_id"
  end

  create_table "requisicaos", force: :cascade do |t|
    t.string   "responsavel_nome"
    t.string   "responsavel_cpf"
    t.date     "data_requisicao"
    t.date     "data_emissao"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "endereco_id"
    t.integer  "documentos_id"
    t.integer  "pessoa_id"
    t.integer  "funcionario_id"
    t.integer  "carteirinha_id"
  end

end
