class CreateMinutes < ActiveRecord::Migration
  def change
    create_table :minutes do |t|
      t.datetime :date
      t.string :members
      t.references :ael, index: true

      t.timestamps
    end
  end
end
