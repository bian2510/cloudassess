class CreatePeople < ActiveRecord::Migration[6.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.references :organisation, null: false, foreign_key: true
      t.integer :record_count

      t.timestamps
    end
  end
end
