class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string :full_name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
