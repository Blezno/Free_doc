class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :date

      t.belongs_to :doctor, index: true #vient rajouter les id des dr et patients...
      t.belongs_to :patient, index: true

      t.timestamps
    end
  end
end
