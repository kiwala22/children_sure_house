class CreateContactUs < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_us do |t|
      t.string :email
      t.string :name
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
