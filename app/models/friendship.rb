class Friendship < ActiveRecord::Base
  belongs_to :requester, :class_name => 'Profile'
  belongs_to :requestee, :class_name => 'Profile'
end
