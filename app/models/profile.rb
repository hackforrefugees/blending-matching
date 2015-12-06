class Profile < ActiveRecord::Base
  include Tagliatelle::Taggable

  belongs_to :location, required: true

  has_many :friendships, :foreign_key => "requester_id"
  has_many :passive_friendships, :class_name => "Friendship", :foreign_key => "requestee_id"

  has_many :active_friends, -> { where(friendships: { accepted: true}) }, :through => :friendships, :source => :requestee
  has_many :passive_friends, -> { where(friendships: { accepted: true}) }, :through => :passive_friendships, :source => :requester
  has_many :pending_friends, -> { where(friendships: { accepted: false}) }, :through => :friendships, :source => :requestee
  has_many :requested_friends, -> { where(friendships: { accepted: false}) }, :through => :passive_friendships, :source => :requester

  validates :name, presence: true

  mount_uploader :picture, ProfilePictureUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def friends
    active_friends | passive_friends
  end

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
