class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :code
      t.integer :credits
      t.boolean :independent_study

      t.timestamps
    end
  end
end
