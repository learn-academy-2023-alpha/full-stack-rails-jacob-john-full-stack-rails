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


    def create 
        @home = Home.create(home_params)
        redirect_to homes_path
    
    end
    
    def destroy
        @home = Home.find(params[:id]) 
        if @home.destroy
          redirect_to homes_path
        end
      end




      private
      def home_params
        params.require(:home).permit(:title, :content)
      end
end

