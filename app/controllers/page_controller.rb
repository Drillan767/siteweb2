class PageController < ApplicationController

  def index
    @titre = 'Accueil'
    render :layout => false
  end

  def admin
    @titre = 'Partie Admin'
  end

  def about
    @titre = 'À propos'
  end

  def cgu
    @titre = 'Mentions légales'
  end
end
