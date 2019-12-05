class CreateBookRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :book_records do |t|
      t.integer :user_id
      t.integer :book_id
      t.boolean :read

      t.timestamps
    end
  end
end
