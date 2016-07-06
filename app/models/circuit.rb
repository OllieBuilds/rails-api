
class Circuit < ActiveRecord::Base
  belongs_to :user
  has_many :exercises
  validates :user, presence: true
end
