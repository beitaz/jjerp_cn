class StaticController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  skip_after_action :verify_authorized
  def index; end

  def home
    @user = current_user
    render 'users/show'
  end

  def profile
    @user = current_user
    render 'users/edit'
  end

  def about; end

  def contact; end

  def tasks
    @tasks = []
  end

  def dbdump
    DumpWorker.perform_async
    render 'static/tasks'
  end
end
