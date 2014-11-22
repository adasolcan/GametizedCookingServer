class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :checkin, :foreign_key => "recipe_id"

  def show_by_category_id(options={})
    Recipe.where(category_id: options[:category_id])
  end
end
