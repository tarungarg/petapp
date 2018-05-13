class CreateDogcurves < ActiveRecord::Migration[5.1]
  def change
    create_table :dogcurves do |t|

      t.timestamps
    end
  end
end
