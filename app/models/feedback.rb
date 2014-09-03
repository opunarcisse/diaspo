class Feedback < ActiveRecord::Base

validates :email, :full_name, :message, :presence => true 

validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "format is test@test.com" }

end
