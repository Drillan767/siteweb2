require 'test_helper'

class PortfolioControllerTest < ActionDispatch::IntegrationTest
  setup do
    @portfolio = portfolio(:one)
  end

  test "should get index" do
    get portfolio_index_url
    assert_response :success
  end

  test "should get new" do
    get new_portfolio_url
    assert_response :success
  end

  test "should create portfolio" do
    assert_difference('Portfolio.count') do
      post portfolio_index_url, params: { portfolio: { categorie: @portfolio.categorie, date: @portfolio.date, description: @portfolio.description, public: @portfolio.public, thumbnail: @portfolio.thumbnail, titre: @portfolio.titre } }
    end

    assert_redirected_to portfolio_url(Portfolio.last)
  end

  test "should show portfolio" do
    get portfolio_url(@portfolio)
    assert_response :success
  end

  test "should get edit" do
    get edit_portfolio_url(@portfolio)
    assert_response :success
  end

  test "should update portfolio" do
    patch portfolio_url(@portfolio), params: { portfolio: { categorie: @portfolio.categorie, date: @portfolio.date, description: @portfolio.description, public: @portfolio.public, thumbnail: @portfolio.thumbnail, titre: @portfolio.titre } }
    assert_redirected_to portfolio_url(@portfolio)
  end

  test "should destroy portfolio" do
    assert_difference('Portfolio.count', -1) do
      delete portfolio_url(@portfolio)
    end

    assert_redirected_to portfolio_index_url
  end
end
