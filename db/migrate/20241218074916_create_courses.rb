class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :description
      t.integer :max_capacity
      t.date :start_date
      t.date :end_date
      t.string :schedule
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
