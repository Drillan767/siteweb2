class PageController < ApplicationController

  def index
    @titre = 'Accueil'
    render :layout => false
  end

  def admin
    @titre = 'Partie Admin'

    @portfolios = Portfolio.all
    @articles = Article.all
  end

  def about
    @titre = 'À propos'
  end

  def cgu
    @titre = 'Mentions légales'
  end
end
