class HomeController < ApplicationController
  before_action :authenticate_worker!
  def index
  end
end
