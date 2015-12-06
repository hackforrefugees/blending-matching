class Friendship < ActiveRecord::Base
  attr_accessor :status

  belongs_to :requester, :class_name => 'Profile'
  belongs_to :requestee, :class_name => 'Profile'

  scope :accepted, -> { where(accepted: true) }
end
