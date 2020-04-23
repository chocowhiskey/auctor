class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :age
      t.integer :height
      t.string :sex
      t.string :hair_color
      t.string :eye_color
      t.string :physique
      t.string :profession
      t.string :place_of_birth
      t.date :birthday
      t.text :personality
      t.references :project, foreign_key: true
      t.timestamps
    end
  end
end
