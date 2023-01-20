class CreateQuestionCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.timestamps
      t.string :name, null: false
      t.integer :status, null: false, default: 0, index: true
    end

    create_table :question_categories do |t|
      t.timestamps
      t.references :question, null: false, index: true
      t.references :category, null: false, index: true
    end
  end
end
