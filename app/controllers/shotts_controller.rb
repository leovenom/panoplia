class ShottsController < ApplicationController
  before_action :set_shott, only: [:show, :edit, :update, :destroy, :like, :unlike]
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :like, :unlike]
  impressionist actions: [:show], unique: [:impressionable_type, :impressionable_id, :session_hash]
  
  # GET /shotts
  # GET /shotts.json
  def index
    @shotts = Shott.all.order('created_at DESC')
  end

  # GET /shotts/1
  # GET /shotts/1.json
  def show
  end

  # GET /shotts/new
  def new
    @shott = current_user.shotts.build
  end

  # GET /shotts/1/edit
  def edit
  end

  # POST /shotts
  # POST /shotts.json
  def create
    @shott = current_user.shotts.build(shott_params)

    respond_to do |format|
      if @shott.save
        format.html { redirect_to @shott, notice: 'Shot was successfully created.' }
        format.json { render :show, status: :created, location: @shott }
      else
        format.html { render :new }
        format.json { render json: @shott.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shotts/1
  # PATCH/PUT /shotts/1.json
  def update
    respond_to do |format|
      if @shott.update(shott_params)
        format.html { redirect_to @shott, notice: 'Shot was successfully updated.' }
        format.json { render :show, status: :ok, location: @shott }
      else
        format.html { render :edit }
        format.json { render json: @shott.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shotts/1
  # DELETE /shotts/1.json
  def destroy
    @shott.destroy
    respond_to do |format|
      format.html { redirect_to shotts_url, notice: 'Shot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def like
    @shott.liked_by current_user
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
      format.json { render layout:false }
    end
  end

  def unlike
    @shott.unliked_by current_user
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
      format.json { render layout:false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shott
      @shott = Shott.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shott_params
      params.require(:shott).permit(:title, :description, :user_shott)
    end
end
