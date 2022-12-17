class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.timestamps
      t.string :prompt, null: false, index: true
      t.integer :difficulty, null: false, index: true
      t.integer :type, null: false, index: true
      t.integer :status, null: false, index: true
      t.string :uid, null: false, unique: true
      t.string :provider, null: false
    end
  end
end
