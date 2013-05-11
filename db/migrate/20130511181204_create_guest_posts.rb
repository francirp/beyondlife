class CreateGuestPosts < ActiveRecord::Migration
  def change
    create_table :guest_posts do |t|
      t.string :text
      t.datetime :created_at
      t.integer :user_id
      t.integer :person_id
    end
  end
end
