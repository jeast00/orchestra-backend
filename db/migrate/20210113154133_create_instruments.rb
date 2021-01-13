class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :instrument_name
      t.integer :band_id
      t.timestamps
    end
  end
end
