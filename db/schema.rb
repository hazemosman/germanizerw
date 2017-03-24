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

ActiveRecord::Schema.define(version: 20170315153940) do

  create_table "pronouns", force: :cascade do |t|
    t.string   "description", null: false
    t.string   "nominative",  null: false
    t.string   "accusative",  null: false
    t.string   "dative",      null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tenses", force: :cascade do |t|
    t.string   "name",        null: false
    t.string   "description", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "verbs", force: :cascade do |t|
    t.string   "infinitive", null: false
    t.string   "tense_id",   null: false
    t.string   "ich",        null: false
    t.string   "du",         null: false
    t.string   "er"
    t.string   "wir",        null: false
    t.string   "ihr",        null: false
    t.string   "sie",        null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
