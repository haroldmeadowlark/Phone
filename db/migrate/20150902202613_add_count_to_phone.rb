class AddCountToPhone < ActiveRecord::Migration
  def change
    add_column :phones, :count, :integer, :default => 0
  end
end
