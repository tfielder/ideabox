class IdeasController < ApplicationController
  before_action :set_idea, only: [:edit, :update]

  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
    @user = User.find(params[:user_id])
  end

  def create
    @idea = Idea.new(idea_params)
    @idea.save
    redirect_to ideas_path
  end

  def edit

  end

  def update
    @idea.update(idea_params)
    redirect_to ideas_path
  end

  def destroy
    @idea = Idea.destroy(params[:id])
    redirect_to ideas_path
  end

  private
    def idea_params
      params.require(:idea).permit(:title, :image, :note)
    end

    def set_idea
      @idea = Idea.find(params[:id])
    end
end