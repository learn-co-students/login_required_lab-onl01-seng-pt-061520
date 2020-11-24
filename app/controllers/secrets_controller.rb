class SecretsController < ApplicationController
    before_action :checker  

    def show 
        @user = session[:name]
    end 
    
    private 

    def checker 
      return redirect_to :new_session unless current_user
    end  
    
end
