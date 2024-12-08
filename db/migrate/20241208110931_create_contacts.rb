class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :phone
      t.string :linkedin
      t.string :github

      t.timestamps
    end
  end
end
