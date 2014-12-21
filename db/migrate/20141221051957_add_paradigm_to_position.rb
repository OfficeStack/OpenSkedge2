class AddParadigmToPosition < ActiveRecord::Migration
  def change
    add_column :positions, :paradigm, :string, default: 'availability'
  end
end
