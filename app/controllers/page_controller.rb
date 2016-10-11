class PageController < ApplicationController

  before_filter lambda {@body_class = 'Pagestatique'}

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
