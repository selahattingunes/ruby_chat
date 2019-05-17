class MessajcontrollerController < ApplicationController
  def create
        if(params[:message])
           Mesajlar.create(mesaj: params[:message], user_id: current_user.id)
        end
        redirect_to("/online_oda")
  end
end
