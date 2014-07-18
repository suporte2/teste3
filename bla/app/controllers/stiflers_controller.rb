class StiflersController < ApplicationController
  before_action :set_stifler, only: [:show, :edit, :update, :destroy]

  # GET /stiflers
  # GET /stiflers.json
  def index
    @stiflers = Stifler.all
  end

  # GET /stiflers/1
  # GET /stiflers/1.json
  def show
  end

  # GET /stiflers/new
  def new
    @stifler = Stifler.new
  end

  # GET /stiflers/1/edit
  def edit
  end

  # POST /stiflers
  # POST /stiflers.json
  def create
    @stifler = Stifler.new(stifler_params)

    respond_to do |format|
      if @stifler.save
        format.html { redirect_to @stifler, notice: 'Stifler was successfully created.' }
        format.json { render :show, status: :created, location: @stifler }
      else
        format.html { render :new }
        format.json { render json: @stifler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stiflers/1
  # PATCH/PUT /stiflers/1.json
  def update
    respond_to do |format|
      if @stifler.update(stifler_params)
        format.html { redirect_to @stifler, notice: 'Stifler was successfully updated.' }
        format.json { render :show, status: :ok, location: @stifler }
      else
        format.html { render :edit }
        format.json { render json: @stifler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stiflers/1
  # DELETE /stiflers/1.json
  def destroy
    @stifler.destroy
    respond_to do |format|
      format.html { redirect_to stiflers_url, notice: 'Stifler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stifler
      @stifler = Stifler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stifler_params
      params.require(:stifler).permit(:nome, :cor, :numero)
    end
end
