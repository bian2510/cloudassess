class CreateOrganisations < ActiveRecord::Migration[6.1]
  def change
    create_table :organisations do |t|
      t.string :title
      t.string :location

      t.timestamps
    end
  end
end
