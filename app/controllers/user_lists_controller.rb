class UserListsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user_lists = current_user.user_lists
    @task_completed = @user_lists.count
  end

  def create
  	@list = List.find(params[:list_id])
  	@user_list = UserList.new(list: @list, user: current_user)
  	if @user_list.save
  		redirect_to lists_path, notice: 'Completed task'
  	end
  end

  def remove_list
    u = User.find(params[:list_id])
    l = u.user_lists.first
    u.user_lists.delete(l)
    l.delete
    redirect_to lists_path, alert: 'Incompleted task'
  end
end
