class CreateSynths < ActiveRecord::Migration
  def change
    create_table :synths do |t|
      t.belongs_to :synth_creator
      t.string :name
      t.integer :synth_creator_id
      t.string :type

      t.timestamps
    end
  end
end
