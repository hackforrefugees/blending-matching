class Profile < ActiveRecord::Base
  include Tagliatelle::Taggable

  belongs_to :location, required: true

  validates :name, presence: true
  validates :description, presence: true

  mount_uploader :picture, ProfilePictureUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #  def friends_with?(profile)
  #    friendships.include?(profile)
  #  end
  #
  # def accepted_friends_with?(profile)
  #   friendships.accepted.include?(profile)
  # end

  def friend_status (profile)
    friendships = Friendship.where("requester_id = ? AND requestee_id = ?", profile.id, self.id)
    if (!friendships.empty?)
      friendship = friendships.first
      if (friendship.accepted)
        friendship.status = :accepted
        return friendship
      else
        friendship.status = :awaiting_your_reply
        return friendship
      end
    else
      friendships = Friendship.where("requester_id = ? AND requestee_id = ?", self.id, profile.id)
      if (!friendships.empty?)
        friendship = friendships.first
        if (friendship.accepted)
          friendship.status = :accepted
          return friendship
        else
          friendship.status = :pending
          return friendship
        end
      else
        return nil
      end
    end
  end
end
