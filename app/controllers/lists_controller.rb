class ListsController < ApplicationController
  def index
  	@lists = List.all
  	@task_completed = UserList.where(user_id: current_user).count
  end

  def show
  	@list = List.find(params[:id])
  	@user_details = @list.users
  end
end
