class AddNotesToBookRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :book_records, :notes, :text
  end
end
