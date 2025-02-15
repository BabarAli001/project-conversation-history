class CommentsController < ApplicationController
  before_action :set_project

  def create
    @comment = @project.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to @project, notice: 'Comment was successfully added.'
    else
      redirect_to @project, alert: 'Error adding comment.'
    end
  end

  def destroy
    @comment = @project.comments.find(params[:id])

    if @comment.user == current_user
      @comment.destroy
      redirect_to @project, notice: 'Comment was successfully removed.'
    else
      redirect_to @project, alert: 'You cannot delete this comment.'
    end
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
