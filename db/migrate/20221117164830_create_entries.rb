class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.string :title
      t.string :author
      t.string :body

      t.timestamps
    end
  end
end
