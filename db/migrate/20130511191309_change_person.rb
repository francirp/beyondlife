class ChangePerson < ActiveRecord::Migration
  def change
    change_column :people, :dod, :string
    change_column :people, :dob, :string
  end
end
