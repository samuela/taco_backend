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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130706041142) do

  create_table "categories", :force => true do |t|
    t.string   "nytID"
    t.string   "feedURL"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "options", :force => true do |t|
    t.string   "t1"
    t.string   "t2"
    t.string   "t3"
    t.string   "t4"
    t.string   "t5"
    t.string   "t6"
    t.string   "t7"
    t.string   "t8"
    t.string   "t9"
    t.string   "t10"
    t.string   "t11"
    t.string   "t12"
    t.string   "t13"
    t.string   "t14"
    t.string   "t15"
    t.string   "t16"
    t.string   "t17"
    t.string   "t18"
    t.string   "t19"
    t.string   "t20"
    t.string   "t21"
    t.string   "t22"
    t.string   "t23"
    t.string   "t24"
    t.string   "t25"
    t.string   "t26"
    t.string   "t27"
    t.string   "t28"
    t.string   "t29"
    t.string   "t30"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "venues", :force => true do |t|
    t.string   "latitude"
    t.string   "longitude"
    t.string   "nytID"
    t.string   "tags"
    t.string   "venue_name"
    t.string   "website"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
