class UserSession < ApplicationRecord
  belongs_to :user
  has_many :events
end
