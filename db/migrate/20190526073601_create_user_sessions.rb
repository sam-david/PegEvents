class CreateUserSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_sessions do |t|
      t.belongs_to :user, index: true
      t.string :uuid

      t.timestamps
    end
  end
end
