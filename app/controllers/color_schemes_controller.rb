class ColorSchemesController < ApplicationController
  before_action :set_color_scheme, only: [:show, :update, :destroy]

  # GET /color_schemes
  def index
    @color_schemes = ColorScheme.all

    render json: @color_schemes
  end

  # GET /color_schemes/1
  def show
    render json: @color_scheme
  end

  # POST /color_schemes
  def create
    @color_scheme = ColorScheme.new(color_scheme_params)

    if @color_scheme.save
      render json: @color_scheme, status: :created, location: @color_scheme
    else
      render json: @color_scheme.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /color_schemes/1
  def update
    if @color_scheme.update(color_scheme_params)
      render json: @color_scheme
    else
      render json: @color_scheme.errors, status: :unprocessable_entity
    end
  end

  # DELETE /color_schemes/1
  def destroy
    @color_scheme.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color_scheme
      @color_scheme = ColorScheme.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def color_scheme_params
      params.require(:color_scheme).permit(:name)
    end
end
