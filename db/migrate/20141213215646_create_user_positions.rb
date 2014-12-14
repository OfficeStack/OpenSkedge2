class CreateUserPositions < ActiveRecord::Migration
  def change
    create_table :user_positions do |t|
      t.references :user, index: true
      t.references :position, index: true

      t.timestamps
    end
  end
end
