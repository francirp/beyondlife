class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.datetime :dob
      t.datetime :dod
      t.string :full_name
      t.string :quote
      t.string :eulogy
      t.string :charity
      t.string :photo_url
    end
  end
end
