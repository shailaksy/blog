class AddPublishedToEntry < ActiveRecord::Migration[7.0]
  def change
    add_column :entries, :published, :boolean, default: false
  end
end
