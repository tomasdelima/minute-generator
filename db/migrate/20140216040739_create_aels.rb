class CreateAels < ActiveRecord::Migration
  def change
    create_table :aels do |t|
      t.string :city
      t.string :members

      t.timestamps
    end
  end
end
