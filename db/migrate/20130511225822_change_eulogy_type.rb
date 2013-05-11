class ChangeEulogyType < ActiveRecord::Migration
  def change
    change_column :people, :eulogy, :text
  end
end
