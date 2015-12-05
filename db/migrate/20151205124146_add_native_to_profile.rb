class AddNativeToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :native, :boolean
  end
end
