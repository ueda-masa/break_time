class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      # 他のカラムが必要な場合はここに追加します
      t.string :name, null: false
      t.timestamps
    end
  end
end