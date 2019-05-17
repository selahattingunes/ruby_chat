class UserphotosController < ApplicationController
  before_action :set_userphoto, only: [:show, :edit, :update, :destroy]

  # GET /userphotos
  # GET /userphotos.json
  def index
    @userphotos = Userphoto.where(user_id: current_user.id)
  end

  # GET /userphotos/1
  # GET /userphotos/1.json
  def show
  end

  # GET /userphotos/new
  def new
    @userphoto = Userphoto.new
  end

  # GET /userphotos/1/edit
  def edit
  end

  # POST /userphotos
  # POST /userphotos.json
  def create
    if !(Userphoto.find_by(user_id: current_user.id))
        @userphoto = Userphoto.new(userphoto_params)
        @userphoto.user_id=current_user.id
        respond_to do |format|
          if @userphoto.save
            format.html { redirect_to @userphoto, notice: 'Userphoto was successfully created.' }
            format.json { render :show, status: :created, location: @userphoto }
          else
            format.html { render :new }
            format.json { render json: @userphoto.errors, status: :unprocessable_entity }
          end
        end
    end
  end

  # PATCH/PUT /userphotos/1
  # PATCH/PUT /userphotos/1.json
  def update
    respond_to do |format|
      if @userphoto.update(userphoto_params)
        format.html { redirect_to @userphoto, notice: 'Userphoto was successfully updated.' }
        format.json { render :show, status: :ok, location: @userphoto }
      else
        format.html { render :edit }
        format.json { render json: @userphoto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userphotos/1
  # DELETE /userphotos/1.json
  def destroy
    @userphoto.destroy
    respond_to do |format|
      format.html { redirect_to userphotos_url, notice: 'Userphoto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userphoto
      @userphoto = Userphoto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userphoto_params
      params.require(:userphoto).permit(:alt, :resim)
    end
end
