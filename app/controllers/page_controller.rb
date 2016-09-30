class PageController < ApplicationController

  def index
    @titre = 'Index'
  end

  def admin
    @titre = 'Partie Admin'
  end

  def aboutme
    @titre = 'Qui suis-je ?'
  end

  def cgu
    @titre = 'Mentions légales'
  end

  def map
    @titre = 'Plan'
  end
end
