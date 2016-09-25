class Category < ApplicationRecord
	# belong_to:circle_id
	has_many :circle_categories
	has_many :user_prof_categories
end
