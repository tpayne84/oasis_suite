class CreateTiers < ActiveRecord::Migration
  def change
    create_table :tiers do |t|

      t.timestamps
    end
  end
end
