class GroupsController < ApplicationController
  def index
  	@groups=Group.all
  end
  def new
  	Group.create_new_group
  	@groups=Group.all
  	render 'index'
  end

  def create
  	
  end
end
