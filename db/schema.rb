# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_01_205701) do

  create_table "conciertos", force: :cascade do |t|
    t.string "lugar"
    t.date "fecha_concierto"
    t.string "duracion"
    t.integer "asistentes"
    t.integer "grupo_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["grupo_id"], name: "index_conciertos_on_grupo_id"
  end

  create_table "grupos", force: :cascade do |t|
    t.string "nombre"
    t.integer "cantidad_integrantes"
    t.date "fecha_debut"
    t.string "conformacion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "conciertos", "grupos"
end
