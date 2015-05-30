class CreateOrganizers < ActiveRecord::Migration
  def change
    create_table :organizers do |t|
      t.string :email
      t.string :pass
      t.string :name
      t.string :phone

      t.timestamps null: false
    end
  end
end
