class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  # GET /portfolios
  def index
    @portfolios = Portfolio.all
    @titre = 'Portfolio'
  end

  # GET /portfolios/1
  def show
  end

  # GET /portfolios/new
  def new
    @portfolio = Portfolio.new
  end

  # GET /portfolios/1/edit
  def edit
  end

  # POST /portfolios
  def create
    @portfolio = Portfolio.new(portfolio_params)

    if @portfolio.save
      # to handle multiple images upload on create
      if params[:images]
        params[:images].each { |image|
          @portfolio.photos.create(image: image)
        }
      end
      redirect_to @portfolio, notice: 'Portfolio créé.'
    else
      render :new
    end
  end

  # PATCH/PUT /portfolios/1
  def update
    if @portfolio.update(portfolio_params)
        # to handle multiple images upload on create
=begin
        if params[:images]
          params[:images].each { |image|
            @portfolio.photos.create(image: image)
          }
        end
=end
      redirect_to @portfolio, notice: 'Portfolio mis à jour.'
    else
      render :edit
    end
  end

  # DELETE /portfolios/1
  def destroy
    @portfolio.destroy
    redirect_to portfolios_url, notice: 'Portfolio supprimé.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def portfolio_params
      params.require(:portfolio).permit(:titre, :description, :public, :thumbnail, :categorie, :slug, :date, :lien)
    end
end
