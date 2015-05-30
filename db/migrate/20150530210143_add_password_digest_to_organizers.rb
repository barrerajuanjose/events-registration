class AddPasswordDigestToOrganizers < ActiveRecord::Migration
  def change
    add_column :organizers, :password_digest, :string
  end
end
