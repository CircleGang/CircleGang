class Circle < ApplicationRecord
		has_many :circle_categories
		has_many :categories ,through: :circle_categories

		#belongs_to :user_prof

end
