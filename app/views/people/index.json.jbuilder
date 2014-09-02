json.array!(@people) do |person|
  json.extract! person, :id, :first_name, :middle_name, :last_name, :gender, :email_address, :date_of_birth, :year_of_travel, :host_country, :city_in_cameroon, :leve_of_education, :profession, :marital_status, :other_information
  json.url person_url(person, format: :json)
end
