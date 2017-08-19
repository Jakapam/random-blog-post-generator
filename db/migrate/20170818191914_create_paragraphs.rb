class CreateParagraphs < ActiveRecord::Migration[5.0]
  def change
    create_table :paragraphs do |t|
      t.string :body
    end
  end
end
