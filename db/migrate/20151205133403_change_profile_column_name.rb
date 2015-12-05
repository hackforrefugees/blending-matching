class ChangeProfileColumnName < ActiveRecord::Migration
  def change
    rename_column :profiles, :avatar, :picture
  end
end
