class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy

  #attachment :profile_image_id
  attachment :profile_image

  validates :name, length: {minimum: 2, maximum: 20}, uniqueness: true
  #validates :introduction,presence: :true, length: {maximum: 50}
  validates :introduction, length: {maximum: 50}
end
