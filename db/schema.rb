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

ActiveRecord::Schema.define(version: 20170215122838) do

  create_table "associados", force: :cascade do |t|
    t.string   "matricula"
    t.string   "nome"
    t.string   "cpf"
    t.string   "rg"
    t.date     "nascimento"
    t.string   "celular"
    t.string   "email"
    t.string   "logradouro"
    t.string   "numero"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.boolean  "informativo"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "picture"
    t.string   "sexo"
  end

  create_table "entradas", force: :cascade do |t|
    t.date     "data"
    t.float    "valor"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registros", force: :cascade do |t|
    t.date     "dataPrimeiroPagamento"
    t.float    "valorPrimeiroPagamento"
    t.date     "dataSegundoPagamento"
    t.float    "valorSegundoPagamento"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "associado_id"
    t.string   "formaPrimeiroPagamento"
    t.string   "formaSegundoPagamento"
    t.integer  "entrada_id"
    t.index ["associado_id"], name: "index_registros_on_associado_id"
    t.index ["entrada_id"], name: "index_registros_on_entrada_id"
  end

  create_table "saidas", force: :cascade do |t|
    t.date     "data"
    t.float    "valor"
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
