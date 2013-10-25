class CreateTestRecords < ActiveRecord::Migration
  def change
    create_table :test_records do |t|

      t.timestamps
    end
  end
end
