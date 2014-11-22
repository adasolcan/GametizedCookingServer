class User < ActiveRecord::Base
  has_many :checkin, :foreign_key => "user_id"
  has_many :has_badge, :foreign_key => "user_id"
end
