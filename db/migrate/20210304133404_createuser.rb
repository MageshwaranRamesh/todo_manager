class Createuser < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_Name
      t.string :last_Name
      t.string :email
      t.string :password_digest
      t.timestamps
    end
  end
end
