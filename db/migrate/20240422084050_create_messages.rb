class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.integer :duration, null: false

      # Remove the following two lines
      # t.datetime :created_at, null: false
      # t.datetime :updated_at, null: false

      t.timestamps
    end
  end
end