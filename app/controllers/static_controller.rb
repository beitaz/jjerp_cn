class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index; end

  def home; end

  def about; end

  def contact; end
end
