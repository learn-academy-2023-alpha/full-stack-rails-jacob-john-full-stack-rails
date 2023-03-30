class HomeController < ApplicationController
    def index
        @homes = Home.all
    end

    def show 
        @home = Home.find(params[:id])
    end    
    def new
        @home = Home.new
    end
end

