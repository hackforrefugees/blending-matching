class Profile < ActiveRecord::Base
  include Tagliatelle::Taggable

  belongs_to :location, required: true
  has_many :friendships
  has_many :friends, :through => :friendships

  validates :name, presence: true
  validates :description, presence: true

  mount_uploader :picture, ProfilePictureUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
