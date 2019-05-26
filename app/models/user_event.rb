class UserEvent < ApplicationRecord
  belongs_to :event
  belongs_to :session
end
