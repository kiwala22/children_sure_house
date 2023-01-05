class HomeController < ApplicationController
  before_action :set_projects, only: %i[index]

  def index
  end

  def set_projects
    @projects = Project.all.by_date
  end
end
