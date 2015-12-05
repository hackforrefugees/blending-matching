class Profile < ActiveRecord::Base
  include Tagliatelle::Taggable

  belongs_to :location, required: true

  validates :name, presence: true
  validates :description, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
