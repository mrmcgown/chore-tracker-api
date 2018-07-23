class CreateChores < ActiveRecord::Migration[5.1]
  def change
    create_table :chores do |t|
      t.string :name
      t.integer :estimated_time
      t.boolean :is_finished
      t.integer :frequency
      t.date :last_completed

      t.timestamps
    end
  end
end
