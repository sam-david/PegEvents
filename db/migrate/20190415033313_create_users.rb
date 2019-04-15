class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :autodesk_id
      t.string :autodesk_username
      t.string :autodesk_displayname

      t.timestamps
    end
  end
end
