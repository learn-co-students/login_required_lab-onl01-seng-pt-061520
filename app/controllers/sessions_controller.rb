class SessionsController < ApplicationController
   def new 
   end 

   def create
    if !params[:name] or params[:name] == ""
        redirect_to :new_session
    else 
        session[:name] = params[:name]
        # redirect_to :secret
     
    end  
   end 

   def destroy
    if session[:name]
        session.delete :name
    else 
        session[:name] = nil
    end
end 
end
