class Circle < ApplicationRecord
	has_many:category_id
	belong_to:user_id

end
