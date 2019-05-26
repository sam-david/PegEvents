class UserEvent < ApplicationRecord
  belongs_to :event
  belongs_to :user_session
end
