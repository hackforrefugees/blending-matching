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

  def friend_status (profile)
    friendship = Friendship.where("requester_id = ? AND requestee_id = ?", profile.id, self.id)
    if (!friendship.empty?)
      if (friendship.first.accepted)
        return :accepted
      else
        return :awaiting_your_reply
      end
    else
      friendship = Friendship.where("requester_id = ? AND requestee_id = ?", self.id, profile.id)
      if (!friendship.empty?)
        if (friendship.first.accepted)
          return :accepted
        else
          return :pending
        end
      else
        return :available
      end
    end
  end
end
