class ChangePositionParadigmToEnum < ActiveRecord::Migration
  def change
    remove_column :positions, :paradigm
    add_column :positions, :paradigm, :integer
  end
end
