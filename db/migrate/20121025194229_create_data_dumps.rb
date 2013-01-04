class CreateDataDumps < ActiveRecord::Migration
  def change
    create_table :data_dumps do |t|
      t.text :dump

      t.timestamps
    end
  end
end
