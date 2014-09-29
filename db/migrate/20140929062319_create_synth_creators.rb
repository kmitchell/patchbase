class CreateSynthCreators < ActiveRecord::Migration
  def change
    create_table :synth_creators do |t|
      t.string :name
      t.string :website

      t.timestamps
    end
  end
end
