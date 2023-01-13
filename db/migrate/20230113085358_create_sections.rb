class CreateSections < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.string :title
      t.text :content
      t.string :link
      t.string :link_text

      t.timestamps
    end
  end
end
