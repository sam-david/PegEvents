class CreateUserEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :user_events do |t|
      t.belongs_to :user, index: true
      t.belongs_to :event, index: true
      t.string :document_name
      t.string :version
      t.json :payload
      t.datetime :event_at

      t.timestamps
    end
  end
end
