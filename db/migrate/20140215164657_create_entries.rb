class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.text :description
      t.datetime :due_date
      t.references :minute, index: true
      t.string :responsible
      t.boolean :finished

      t.timestamps
    end
  end
end
