# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100510114006) do

  create_table "forum_permissions", :force => true do |t|
    t.integer  "forum_id",                      :null => false
    t.integer  "role_id",                       :null => false
    t.boolean  "read",       :default => true,  :null => false
    t.boolean  "write",      :default => true,  :null => false
    t.boolean  "moderate",   :default => false, :null => false
    t.boolean  "admin",      :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "forums", :force => true do |t|
    t.string   "title",                        :null => false
    t.string   "description"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "new_parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "tree_id",       :default => 1, :null => false
  end

  create_table "posts", :force => true do |t|
    t.string   "title",        :null => false
    t.text     "content",      :null => false
    t.integer  "user_id",      :null => false
    t.integer  "thread_id",    :null => false
    t.string   "posted_by_ip", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name"], :name => "index_roles_on_name", :unique => true

  create_table "threads", :force => true do |t|
    t.string   "title",                         :null => false
    t.integer  "forum_id",                      :null => false
    t.integer  "user_id",                       :null => false
    t.boolean  "sticky",     :default => false, :null => false
    t.boolean  "locked",     :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "password_salt",                       :default => "", :null => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token"
    t.string   "remember_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "nick",                                                :null => false
    t.integer  "role_id",                                             :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["nick"], :name => "index_users_on_nick", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
