class Circle < ApplicationRecord
	has_many:category_id
	belongs_to:user_id

end
