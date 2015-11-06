class CreateFlashCards < ActiveRecord::Migration
  def change
    create_table :flash_cards do |t|
      t.string :question
      t.string :answer
      t.references :topic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
