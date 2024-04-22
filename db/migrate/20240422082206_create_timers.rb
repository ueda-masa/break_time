class CreateTimers < ActiveRecord::Migration[7.0]
  def change
    create_table :timers do |t|
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.integer :duration, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end


