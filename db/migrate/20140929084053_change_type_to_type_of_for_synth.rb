class ChangeTypeToTypeOfForSynth < ActiveRecord::Migration
  def change
    rename_column :synths, :type, :type_of
  end
end
