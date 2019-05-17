class OnlineOdaController < ApplicationController
  def index
      @mesajlar = Mesajlar.all
  end
end
