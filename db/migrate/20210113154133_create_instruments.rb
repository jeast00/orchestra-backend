class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :instrument_name
      t.references :band
      t.timestamps
    end
  end
end
