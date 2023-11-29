class AddAddressToPresidents < ActiveRecord::Migration[7.1]
  def change
    add_column :presidents, :address, :string
  end
end
