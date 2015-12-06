class Profile < ActiveRecord::Base
  include Tagliatelle::Taggable

  belongs_to :location, required: true

  has_many :active_friendships, :class_name  => "Friendship", :foreign_key => "requester_id"
  has_many :passive_friendships, :class_name => "Friendship", :foreign_key => "requestee_id"

  has_many :active_friends, -> { where(friendships: { accepted: true}) }, :through => :active_friendships, :source => :requestee
  has_many :passive_friends, -> { where(friendships: { accepted: true}) }, :through => :passive_friendships, :source => :requester
  has_many :pending_friends, -> { where(friendships: { accepted: false}) }, :through => :active_friendships, :source => :requestee
  has_many :requested_friends, -> { where(friendships: { accepted: false}) }, :through => :passive_friendships, :source => :requester

  validates :name, presence: true

  mount_uploader :picture, ProfilePictureUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def friendships
    active_friendships | passive_friendships
  end

  def friends
    active_friends | passive_friends
  end

  def friendship_for(profile)
    friendships.find {|friendship| friendship.requester == profile || friendship.requestee == profile}
  end
end
