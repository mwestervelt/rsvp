class AddLastNamesToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :last_name, :string
    add_column :contacts, :guest_lastname, :string
  end
end
