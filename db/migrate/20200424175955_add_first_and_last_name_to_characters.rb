class AddFirstAndLastNameToCharacters < ActiveRecord::Migration[6.0]
  def change
    add_column :characters, :first_name, :string
    add_column :characters, :last_name, :string
  end
end
