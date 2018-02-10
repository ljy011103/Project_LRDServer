class ChulsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_chul, only: [:show, :edit, :update, :destroy]

  # GET /chuls
  # GET /chuls.json
  def index
    @chuls = Chul.all
  end

  # GET /chuls/1
  # GET /chuls/1.json
  def show
  end

  # GET /chuls/new
  def new
    @chul = Chul.new
  end

  # GET /chuls/1/edit
  def edit
  end

  # POST /chuls
  # POST /chuls.json
  def create
    @chul = Chul.new(chul_params)

    respond_to do |format|
      if @chul.save
        format.html { redirect_to @chul, notice: 'Chul was successfully created.' }
        format.json { render :show, status: :created, location: @chul }
      else
        format.html { render :new }
        format.json { render json: @chul.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chuls/1
  # PATCH/PUT /chuls/1.json
  def update
    respond_to do |format|
      if @chul.update(chul_params)
        format.html { redirect_to @chul, notice: 'Chul was successfully updated.' }
        format.json { render :show, status: :ok, location: @chul }
      else
        format.html { render :edit }
        format.json { render json: @chul.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chuls/1
  # DELETE /chuls/1.json
  def destroy
    @chul.destroy
    respond_to do |format|
      format.html { redirect_to chuls_url, notice: 'Chul was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chul
      @chul = Chul.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chul_params
      params.require(:chul).permit(:title, :content)
    end
end
