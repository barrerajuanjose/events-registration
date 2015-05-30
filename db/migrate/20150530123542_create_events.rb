class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :place
      t.timestamp :date
      t.daterange :registrationPeriod
      t.string :type
      t.text :description
      t.string :logo
      t.string :coverImage
      t.integer :capacity
      t.references :organizer, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :organizers
  end
end
