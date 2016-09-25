class UserProfCategory < ApplicationRecord
	belongs_to :user_prof
	belongs_to :category
end
