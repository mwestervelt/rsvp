class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.boolean :with_guest
      t.string :guest_name
      t.boolean :attending
      t.string :song_request

      t.timestamps
    end
  end
end
