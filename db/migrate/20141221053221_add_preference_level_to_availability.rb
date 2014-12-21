class AddPreferenceLevelToAvailability < ActiveRecord::Migration
  def change
    add_column :availabilities, :preference_level, :integer, default: 3
  end
end
