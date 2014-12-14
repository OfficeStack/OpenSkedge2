class CreateShifts < ActiveRecord::Migration
  def change
    create_table :shifts do |t|
      t.references :user, index: true
      t.references :position, index: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :recurrence

      t.timestamps
    end
    add_foreign_key :shifts, :users
    add_foreign_key :shifts, :positions
  end
end
