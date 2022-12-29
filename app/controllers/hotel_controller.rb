class HotelController < ApplicationController
    def edit
        @hotel = Hotel.find(params[:id])
     end
 
    def index
        @hotels = Hotel.all 
    end

    def update
        @hotel = Hotel.find_by id: params[:id]
        if @hotel.update(hotel_params)
            redirect_to hotels
        end
    end

    def new
        @hotel = Hotel.new
    end

    def create
        @hotel = Hotel.new(hotel_params)
        if @hotel.save
            redirect_to hotels_path
        end
    end
    private 
    def hotel_params
        params.require(:hotel).permit(:title, :addres, :description, :price, :email, :phone)
    end
end