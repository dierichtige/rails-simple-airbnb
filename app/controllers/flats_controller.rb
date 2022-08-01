class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
    if params[:query]
      @flats = Flat.where("name LIKE '%#{params[:query]}%'")
   end
    # @flats = Flat.query(params[:query])

  end

  def show
  end

  def new
    @flat = Flat.new
  end

  # def create
  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
    # @flat.update(flat_params)
    # redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @flat.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to flats_path, status: :see_other
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night, :query)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end

end
