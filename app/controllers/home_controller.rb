class HomeController < ApplicationController
  #layout 'internal'

  before_filter :authenticate_user!

  def index
  end
end
