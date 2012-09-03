class StartController < ApplicationController
  def index
    @posts=Post.all
    @users=User.all
    
    respond_to do |format|
      format.html # index.html.erb
    end    
  end
end
