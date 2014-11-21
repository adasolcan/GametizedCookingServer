class Category < ActiveRecord::Base
    has_many :recipe, :foreign_key => "category_id"
end
