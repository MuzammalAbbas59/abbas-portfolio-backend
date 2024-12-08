class CreatePoetries < ActiveRecord::Migration[6.1]
  def change
    create_table :poetries do |t|
      t.string :title
      t.text :content
      t.string :content_type

      t.timestamps
    end
  end
end
