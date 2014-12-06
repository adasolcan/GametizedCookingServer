class Checkin < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe

  def show_by_user_id(options={})
    Checkin.where(user_id: options[:user_id])
  end

  def show_by_recipe_id(options={})
    Checkin.where(recipe_id: options[:recipe_id])
  end
end
