class DeleteNameColumnFromCharacters < ActiveRecord::Migration[6.0]
  def change
    remove_column :characters, :name
  end
end
