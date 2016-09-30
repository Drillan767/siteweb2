class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]

  def index
    @portfolios = Portfolio.all
    @titre = 'Porfolio'
  end

  def show
  end

  def new
    @portfolio = Portfolio.new
  end

  def edit
  end

  def create
    @portfolio = Portfolio.new(portfolio_params)
    if @portfolio.save
      # to handle multiple images upload on create
      if params[:images]
        params[:images].each { |image|
          @portfolio.photos.create(image: image)
        }
      end
      redirect_to @portfolio, notice: 'Portfolio créé'
    else
      render :new
    end
  end

  def update
    if @portfolio.update(params[:portfolio].permit(:title,:description, :categorie, :lien))
      if params[:images]
        params[:images].each { |image|
          @portfolio.photos.create(image: image)
        }
      end
      redirect_to @portfolio, notice: 'Portfolio mis à jour'
    else
      render :edit
    end
  end
  
  def destroy
    @portfolio.destroy
    redirect_to portfolios_url, notice: 'Portfolio supprimé'
  end

  private
    def set_portfolio
      @portfolio = Portfolio.friendly.find(params[:id])
    end

    def portfolio_params
      params.require(:portfolio).permit(:titre, :description, :categorie, :lien)
    end
end
