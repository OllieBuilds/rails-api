
class Circuit < ActiveRecord::Base
  belongs_to :user
  has_many :exercises
  validate :user, presence: true
end
