class DemoController < ApplicationController
  layout false

  def index
    # specifiy explicit render
    # render('index')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]

    # render('hello')
    # redirect_to(:controller => 'demo' , :action => 'index')
  end
  def about_us
    render('about')
  end

  def contact
    if ['us','ca'].include?(params[:country])
      @phone = '(800) 555-6789'
    elsif params[:country] == 'uk'
      @phone = '(020) 7964 1234'
    else
      @phone = '+1(987) 654-3210'
    end
    render('contact')
  end

end