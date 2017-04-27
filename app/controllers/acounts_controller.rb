class AcountsController < ApplicationController
  before_action :set_acount, only: [:show, :update, :destroy]

  # GET /acounts
  def index
    @acounts = Acount.all

    render json: @acounts
  end

  # GET /acounts/1
  def show
    render json: @acount
  end

  # POST /acounts
  def create
    @acount = Acount.new(acount_params)

    if @acount.save
      render json: @acount, status: :created, location: @acount
    else
      render json: @acount.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /acounts/1
  def update
    if @acount.update(acount_params)
      render json: @acount
    else
      render json: @acount.errors, status: :unprocessable_entity
    end
  end

  # DELETE /acounts/1
  def destroy
    @acount.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acount
      @acount = Acount.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def acount_params
      params.require(:acount).permit(:name, :email)
    end
end
