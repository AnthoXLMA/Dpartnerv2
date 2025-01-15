class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  mount_uploader :avatar, AvatarUploader # For profile picture upload

  # validates :name, presence: true
  # validates :gender, presence: true
  # validates :location, presence: true
  # validates :birthday, presence: true
  has_one_attached :photo
  has_many :events, dependent: :destroy
  has_one :profile, dependent: :destroy

end
