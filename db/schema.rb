ActiveRecord::Schema.define(version: 20160405152115) do
  enable_extension "plpgsql"

  create_table "works", force: :cascade do |t|
    t.string   "make"
    t.string   "model"
    t.string   "image"
    t.string   "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
