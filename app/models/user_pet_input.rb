class UserPetInput < ApplicationRecord
  validates :height, presence: true

  def update_prediction(params)
    params[:predict] = (params[:predict] == 'true')
    if params[:predict]
      update_attributes(prediction: params[:predict])
    else
      pet_data = (pet == 'Dog' ? 'Cat' : 'Dog')
      update_attributes({ prediction: params[:predict], pet: pet_data})
    end
  end

  class << self
     def add_pet_info(params)
      input_prediction = 'Dog'
       pet_info = { height: params[:height], weigh: params[:weigh], pet: input_prediction }
       create!(pet_info)
     end
  end
end
