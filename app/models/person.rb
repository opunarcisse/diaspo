class Person < ActiveRecord::Base
validates :email_address, :first_name, :gender, :year_of_travel, :host_country, :city_in_cameroon, :presence => true 

 validates :email_address, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "format is test@test.com" }

validates :email_address, uniqueness: { case_sensitive: false, message: " already exists in our system" }

end
