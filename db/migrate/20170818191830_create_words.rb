class CreateWords < ActiveRecord::Migration[5.0]
  def change
    create_table :words do |t|
      t.string :entry
      t.string :part_of_speech
      t.string :definition
    end
  end
end
