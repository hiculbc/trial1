class Food < ApplicationRecord
    has_many :like_foods, class_name: 'FoodRelationship::LikeFood'
    has_many :watch_foods, class_name: 'FoodRelationship::FoodStatus'
    has_many :food_comments, class_name: 'FoodRelationship::CommentFood'
    has_many :link_food_via_taste, through: :like_foods, source: :user
    has_many :link_food_via_watch, through: :watch_foods, source: :user

    def liked_users
        link_food_via_taste.where(food_relationship_like_foods: {status: 1})
    end 

    def disliked_users
        link_food_via_taste.where(food_relationship_like_foods: {status: 2})
    end 

    def tasted_users
        link_food_via_watch.where(food_relationship_food_statuses: {status: 0})
    end 

    def want_to_taste_users
        link_food_via_watch.where(food_relationship_food_statuses: {status: 1})
    end 

end
