class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.references :library, foreign_key: true
      t.integer :status, default: 0
      t.references :checked_out_by, foreign_key: { to_table: :users }, index: true
      t.date :due_date

      t.timestamps
    end
  end
end
