class CreateTimecardPunches < ActiveRecord::Migration
  def change
    create_table :timecard_punches do |t|
      t.references :user, index: true
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps null: false
    end
    add_foreign_key :timecard_punches, :users
  end
end
