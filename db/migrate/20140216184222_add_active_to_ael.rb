class AddActiveToAel < ActiveRecord::Migration
  def change
    add_column :aels, :active, :boolean
  end
end
