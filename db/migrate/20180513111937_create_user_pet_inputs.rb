class CreateUserPetInputs < ActiveRecord::Migration[5.1]
  def change
    create_table :user_pet_inputs do |t|
      t.float :height
      t.float :width
      t.string :pet
      t.boolean :prediction, default: false

      t.timestamps
    end
  end
end
