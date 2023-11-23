class ApartmentsController < ApplicationController
  def index
    @apartments = Apartment.all
  end

  def show
    @apartment = Apartment.find(params[:id])
  end

  def new
    @apartment = Apartment.new
  end

  def create
    apartment = Apartment.new(apartment_params)
    if apartment.save
      redirect_to apartment_path(apartment)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @apartment = Apartment.find(params[:id])
  end

  # def update
  #   @apartment = Apartment.find(params[:id])
  #   if apartment.update(apartment_params)
  #     redirect_to my_apartments_path
  #   else
  #     render :update, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @apartment = Apartment.find(params[:id])
  #   @apartment.destroy
    # redirect_to my_apartments_path, status: :see_other
  # end

  private

  def apartment_params
    params.require(:apartment).permit(:title, :address, :price, :description)
  end
end
