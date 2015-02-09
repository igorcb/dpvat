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

ActiveRecord::Schema.define(version: 20150209123543) do

  create_table "clients", force: :cascade do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "numero"
    t.string   "complemento"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.string   "sexo"
    t.integer  "estado_civil"
    t.date     "data_nascimento"
    t.string   "cpf"
    t.string   "rg"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "sinisters", force: :cascade do |t|
    t.integer  "client_id"
    t.string   "data"
    t.string   "sinistro"
    t.date     "data_acidente"
    t.string   "seguradora"
    t.decimal  "valor",               precision: 10, scale: 2
    t.decimal  "comissao_percentual", precision: 10, scale: 2
    t.decimal  "comissao",            precision: 10, scale: 2
    t.date     "data_recebimento"
    t.decimal  "valor_recebido",      precision: 10, scale: 2
    t.integer  "status"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "sinisters", ["client_id"], name: "index_sinisters_on_client_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
