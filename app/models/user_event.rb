class UserEvent < ApplicationRecord
  belongs_to :event
  belongs_to :session
  belongs_to :user, :through => :session
end
