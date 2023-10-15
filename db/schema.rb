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

ActiveRecord::Schema[7.0].define(version: 2023_10_15_051014) do
  create_table "book_relationship_book_statuses", force: :cascade do |t|
    t.integer "status"
    t.text "notes"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_relationship_book_statuses_on_book_id"
    t.index ["user_id"], name: "index_book_relationship_book_statuses_on_user_id"
  end

  create_table "book_relationship_comment_books", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_relationship_comment_books_on_book_id"
    t.index ["user_id"], name: "index_book_relationship_comment_books_on_user_id"
  end

  create_table "book_relationship_like_books", force: :cascade do |t|
    t.integer "status"
    t.integer "user_id", null: false
    t.integer "book_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_relationship_like_books_on_book_id"
    t.index ["user_id"], name: "index_book_relationship_like_books_on_user_id"
  end

  create_table "books", force: :cascade do |t|
    t.text "book_name"
    t.text "book_author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "food_relationship_comment_foods", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.integer "food_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_food_relationship_comment_foods_on_food_id"
    t.index ["user_id"], name: "index_food_relationship_comment_foods_on_user_id"
  end

  create_table "food_relationship_food_statuses", force: :cascade do |t|
    t.integer "status"
    t.text "notes"
    t.integer "user_id", null: false
    t.integer "food_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_food_relationship_food_statuses_on_food_id"
    t.index ["user_id"], name: "index_food_relationship_food_statuses_on_user_id"
  end

  create_table "food_relationship_like_foods", force: :cascade do |t|
    t.integer "status"
    t.integer "user_id", null: false
    t.integer "food_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["food_id"], name: "index_food_relationship_like_foods_on_food_id"
    t.index ["user_id"], name: "index_food_relationship_like_foods_on_user_id"
  end

  create_table "foods", force: :cascade do |t|
    t.text "food_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_relationship_comments", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_relationship_comments_on_movie_id"
    t.index ["user_id"], name: "index_movie_relationship_comments_on_user_id"
  end

  create_table "movie_relationship_like_movies", force: :cascade do |t|
    t.integer "status"
    t.integer "user_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_relationship_like_movies_on_movie_id"
    t.index ["user_id"], name: "index_movie_relationship_like_movies_on_user_id"
  end

  create_table "movie_relationship_watch_movies", force: :cascade do |t|
    t.integer "status"
    t.text "notes"
    t.integer "user_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_relationship_watch_movies_on_movie_id"
    t.index ["user_id"], name: "index_movie_relationship_watch_movies_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.text "movie_name"
    t.text "movie_director"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "song_relationship_comment_songs", force: :cascade do |t|
    t.text "content"
    t.integer "user_id", null: false
    t.integer "song_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_song_relationship_comment_songs_on_song_id"
    t.index ["user_id"], name: "index_song_relationship_comment_songs_on_user_id"
  end

  create_table "song_relationship_like_songs", force: :cascade do |t|
    t.integer "status"
    t.integer "user_id", null: false
    t.integer "song_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_song_relationship_like_songs_on_song_id"
    t.index ["user_id"], name: "index_song_relationship_like_songs_on_user_id"
  end

  create_table "song_relationship_song_statuses", force: :cascade do |t|
    t.integer "status"
    t.text "notes"
    t.integer "user_id", null: false
    t.integer "song_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["song_id"], name: "index_song_relationship_song_statuses_on_song_id"
    t.index ["user_id"], name: "index_song_relationship_song_statuses_on_user_id"
  end

  create_table "songs", force: :cascade do |t|
    t.text "song_name"
    t.text "song_creator"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "useremail"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "book_relationship_book_statuses", "books"
  add_foreign_key "book_relationship_book_statuses", "users"
  add_foreign_key "book_relationship_comment_books", "books"
  add_foreign_key "book_relationship_comment_books", "users"
  add_foreign_key "book_relationship_like_books", "books"
  add_foreign_key "book_relationship_like_books", "users"
  add_foreign_key "food_relationship_comment_foods", "foods"
  add_foreign_key "food_relationship_comment_foods", "users"
  add_foreign_key "food_relationship_food_statuses", "foods"
  add_foreign_key "food_relationship_food_statuses", "users"
  add_foreign_key "food_relationship_like_foods", "foods"
  add_foreign_key "food_relationship_like_foods", "users"
  add_foreign_key "movie_relationship_comments", "movies"
  add_foreign_key "movie_relationship_comments", "users"
  add_foreign_key "movie_relationship_like_movies", "movies"
  add_foreign_key "movie_relationship_like_movies", "users"
  add_foreign_key "movie_relationship_watch_movies", "movies"
  add_foreign_key "movie_relationship_watch_movies", "users"
  add_foreign_key "song_relationship_comment_songs", "songs"
  add_foreign_key "song_relationship_comment_songs", "users"
  add_foreign_key "song_relationship_like_songs", "songs"
  add_foreign_key "song_relationship_like_songs", "users"
  add_foreign_key "song_relationship_song_statuses", "songs"
  add_foreign_key "song_relationship_song_statuses", "users"
end
