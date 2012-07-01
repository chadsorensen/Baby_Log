class CreateFeedings < ActiveRecord::Migration
  def change
    create_table :feedings do |t|
      t.string :side
      t.datetime :starttime
      t.datetime :endtime

      t.timestamps
    end
  end
end
