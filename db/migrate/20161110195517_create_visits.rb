class CreateVisits < ActiveRecord::Migration[5.0]
  def change
    create_table :visits do |t|
      t.belongs_to :doctor
      t.belongs_to :patient
      t.datetime :time

      t.timestamps
    end
  end
end
