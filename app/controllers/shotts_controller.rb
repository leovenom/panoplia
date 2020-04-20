class ShottsController < ApplicationController
  before_action :set_shott, only: [:show, :edit, :update, :destroy]

  # GET /shotts
  # GET /shotts.json
  def index
    @shotts = Shott.all
  end

  # GET /shotts/1
  # GET /shotts/1.json
  def show
  end

  # GET /shotts/new
  def new
    @shott = Shott.new
  end

  # GET /shotts/1/edit
  def edit
  end

  # POST /shotts
  # POST /shotts.json
  def create
    @shott = Shott.new(shott_params)

    respond_to do |format|
      if @shott.save
        format.html { redirect_to @shott, notice: 'Shott was successfully created.' }
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
        format.html { redirect_to @shott, notice: 'Shott was successfully updated.' }
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
      format.html { redirect_to shotts_url, notice: 'Shott was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shott
      @shott = Shott.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shott_params
      params.require(:shott).permit(:title, :description, :user_id)
    end
end
