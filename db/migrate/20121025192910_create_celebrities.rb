class CreateCelebrities < ActiveRecord::Migration
  def change
    create_table :celebrities do |t|
      t.string :name
      t.string :aka
      t.date :dob
      t.string :birth_place
      t.string :gender
      t.string :race
      t.string :orientation
      t.string :occupation
      t.string :political_affiliation
      t.string :nationality
      t.text :description

      t.timestamps
    end
    add_index :celebrities, :name
    add_index :celebrities, :birth_place
    add_index :celebrities, :gender
    add_index :celebrities, :race
    add_index :celebrities, :orientation
    add_index :celebrities, :occupation
    add_index :celebrities, :political_affiliation
    add_index :celebrities, :nationality
  end
end
