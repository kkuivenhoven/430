class CreatePersonInfos < ActiveRecord::Migration
  def change
    create_table :person_infos do |t|
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
