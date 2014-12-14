class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.references :user, index: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :recurrence

      t.timestamps null: false
    end
    add_foreign_key :availabilities, :users
  end
end
