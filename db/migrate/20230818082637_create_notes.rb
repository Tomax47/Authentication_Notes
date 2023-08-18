class CreateNotes < ActiveRecord::Migration[7.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :body
      t.string :author
      t.date :creation_date

      t.timestamps
    end
  end
end
