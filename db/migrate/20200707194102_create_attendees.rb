class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      t.integer :attendee_id
      t.integer :event_id

      t.timestamps
    end
  end
end
