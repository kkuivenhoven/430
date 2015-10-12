class CreateTeams < ActiveRecord::Migration
  self.primary_key = "team"
  def change
    create_table :teams do |t|
      t.string :name
      t.text :location

      t.timestamps null: false
    end
  end
end
