class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# <<<<<<< HEAD
  has_many :favorites, dependent: :destroy
  # belongs_to :circle
# =======
         has_many :favorites, dependent: :destroy
         # belongs_to :circle_id
# >>>>>>> e8dc1d6163ffaf8c8c4c0ba8d2b403e56dd9cfe7
end
