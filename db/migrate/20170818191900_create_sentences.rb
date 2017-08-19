class CreateSentences < ActiveRecord::Migration[5.0]
  def change
    create_table :sentences do |t|
      t.string :content
      t.integer :paragraph_id
    end
  end
end
