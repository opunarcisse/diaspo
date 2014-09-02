class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :gender
      t.string :email_address
      t.date :date_of_birth
      t.date :year_of_travel
      t.string :host_country
      t.string :city_in_cameroon
      t.string :leve_of_education
      t.string :profession
      t.string :marital_status
      t.text :other_information

      t.timestamps
    end
  end
end
