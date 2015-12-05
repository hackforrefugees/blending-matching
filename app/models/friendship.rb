class Friendship < ActiveRecord::Base
  belongs_to :requester_id, :class_name => 'Profile'
  belongs_to :requestee_id, :class_name => 'Profile'
end
