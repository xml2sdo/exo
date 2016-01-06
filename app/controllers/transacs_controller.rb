class TransacsController < ApplicationController
  before_action :set_transac, only: [:show, :edit, :update, :destroy]

  # GET /transacs
  # GET /transacs.json
  def index
    @transacs = Transac.all
  end

  # GET /transacs/1
  # GET /transacs/1.json
  def show
  end

  # GET /transacs/new
  def new
    @transac = Transac.new
  end

  # GET /transacs/1/edit
  def edit
  end

  # POST /transacs
  # POST /transacs.json
  def create
    @transac = Transac.new(transac_params)

    respond_to do |format|
      if @transac.save
        format.html { redirect_to @transac, notice: 'Transac was successfully created.' }
        format.json { render :show, status: :created, location: @transac }
      else
        format.html { render :new }
        format.json { render json: @transac.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transacs/1
  # PATCH/PUT /transacs/1.json
  def update
    respond_to do |format|
      if @transac.update(transac_params)
        format.html { redirect_to @transac, notice: 'Transac was successfully updated.' }
        format.json { render :show, status: :ok, location: @transac }
      else
        format.html { render :edit }
        format.json { render json: @transac.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transacs/1
  # DELETE /transacs/1.json
  def destroy
    @transac.destroy
    respond_to do |format|
      format.html { redirect_to transacs_url, notice: 'Transac was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transac
      @transac = Transac.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transac_params
      params.require(:transac).permit(:inout, :amount, :amount, :title, :account_id)
    end
end
