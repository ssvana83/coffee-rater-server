

ActiveRecord::Schema[7.0].define(version: 2023_11_01_152718) do
  create_table "coffees", force: :cascade do |t|                        # ASSOCIATIONS;
    t.string "name"                                                     # coffee has_many :reviews
    t.string "coffee_origin"                                            # coffee has_many :users, through: :reviews
    t.string "roaster_location"
    t.string "aroma"
    t.integer "roast_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|                        # ASSOCIATIONS;
    t.string "content"                                                  # reviews belongs_to :user
    t.integer "user_id", null: false                                    # reviews belongs_to :coffee
    t.integer "coffee_id", null: false                                  # joins table since other models are joined through reviews
    t.datetime "created_at", null: false                                # contain both a user_id and a coffee_id
    t.datetime "updated_at", null: false                                # only table that holds foreign keys
  end

  create_table "users", force: :cascade do |t|                          # ASSOCIATIONS;
    t.string "username"                                                 # users has_many :reviews
    t.string "email"                                                    # users has_many :coffees, through: :reviews
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
