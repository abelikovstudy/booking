class HotelController < ApplicationController
    def index
        @hotels = Hotel.all 
    end

    def new
        @hotel = Hotel.new
    end

    def create
        @hotel = Hotel.new hotel_params

    end

    def hotel_params
        params.require(:hotel).permit(:title, :addres, :description, :price, :owner, :email, :phone)
    end
end