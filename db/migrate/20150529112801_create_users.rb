class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :pass
      t.string :firstName
      t.string :lastName
      t.json :aditionalInfo

      t.timestamps null: false
    end
  end
end
