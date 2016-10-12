class PortfolioController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolios = Portfolio.all
    @titre = 'Portfolio'
  end

  def show
    @titre = @portfolio.titre
  end

  def new
    @portfolio = Portfolio.new
    @titre = 'Nouveau'
  end

  def edit
    @titre = 'Editer'
  end

  def create
    @portfolio = Portfolio.create(portfolio_params)
    if @portfolio.save
      # to handle multiple images upload on create
      if params[:images]
        params[:images].each { |image|
          @portfolio.photos.create(image: image)
        }
      end
      redirect_to @portfolio, notice: 'Portfolio créé'
    else
      render :new, alert: 'Erreur'
    end
  end

  def update
    if Portfolio.update(portfolio_params)
      # to handle multiple images upload on update when user add more picture
      if params[:images]
        params[:images].each { |image|
          @portfolio.photos.create(image: image)
        }
      end
      redirect_to @portfolio, notice: 'Album mis à jour'
    else
      render :edit
    end
  end

  def destroy
    @portfolio.destroy
    redirect_to portfolio_index, notice: 'Portfolio supprimé'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_portfolio
      @portfolio = Portfolio.friendly.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def portfolio_params
      params.require(:portfolio).permit(:titre, :date, :categorie, :thumbnail, :description, :public)
    end
end