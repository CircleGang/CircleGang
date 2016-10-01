class Circle < ApplicationRecord
		has_many :circle_categories
		has_many :categories ,through: :circle_categories

end
