class PetController < ApplicationController

  before_action :find_user_input, only: [:show, :update]

  def create_pet
    begin
      user_pet_info = UserPetInput.add_pet_info(params)
      redirect_to "/pet/#{user_pet_info.id}"
    rescue Exception=>e 
      render :json => { error_detail: e.backtrace }
    end
  end

  def show
  end

  def update
    @user_input.update_prediction(params)
    respond_to do |format|
      format.html{ redirect_to '/', success: 'Prediction successfully updated.'}
    end
  end


  private

  def find_user_input
    @user_input = UserPetInput.find(params[:id])
  end

end
