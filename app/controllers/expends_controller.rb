class ExpendsController < ApplicationController
  before_action :set_expend, only: [:show, :edit, :update, :destroy]

  # GET /expends
  # GET /expends.json
  def index
    @expends = Expend.all
  end

  # GET /expends/1
  # GET /expends/1.json
  def show
  end

  # GET /expends/new
  def new
    @expend = Expend.new
  end

  # GET /expends/1/edit
  def edit
  end

  # POST /expends
  # POST /expends.json
  def create
    @expend = Expend.new(expend_params)

    respond_to do |format|
      if @expend.save
        format.html { redirect_to @expend, notice: 'Expend was successfully created.' }
        format.json { render :show, status: :created, location: @expend }
      else
        format.html { render :new }
        format.json { render json: @expend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /expends/1
  # PATCH/PUT /expends/1.json
  def update
    respond_to do |format|
      if @expend.update(expend_params)
        format.html { redirect_to @expend, notice: 'Expend was successfully updated.' }
        format.json { render :show, status: :ok, location: @expend }
      else
        format.html { render :edit }
        format.json { render json: @expend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expends/1
  # DELETE /expends/1.json
  def destroy
    @expend.destroy
    respond_to do |format|
      format.html { redirect_to expends_url, notice: 'Expend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_expend
    @expend = Expend.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def expend_params
    params.require(:expend).permit(:reason, :amount, :creator, :note, :deleted)
  end
end
