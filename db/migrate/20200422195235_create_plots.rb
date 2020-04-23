class CreatePlots < ActiveRecord::Migration[6.0]
  def change
    create_table :plots do |t|
      t.text :summary
      t.references :projects, foreign_key: true
      t.timestamps
    end
  end
end
