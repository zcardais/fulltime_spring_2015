class WelcomeController < ApplicationController
  def index
  	@homeland = 'Italy'
  	@countries = ['Norway', 'Sweden', 'Peru']
  	@travel_pics = ['image1.jpg', 'image2.jpg', 'image3.jpg', 'image4.jpg']
  	
  	@id = params['id']
  	@page = params[:page]
  end

  def hello
  	@id = params['id']
  	@page = params[:page]
  end

  def about
  end
end
