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

end
