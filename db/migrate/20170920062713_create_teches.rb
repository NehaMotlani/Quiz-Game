class CreateTeches < ActiveRecord::Migration[5.1]
  def change
    create_table :teches do |t|
      t.string :question
      t.string :option1
      t.string :option2
      t.string :option3
      t.string :option4
      t.integer :ans

      t.timestamps
    end
  end
end
