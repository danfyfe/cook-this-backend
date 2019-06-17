class NotesController < ApplicationController

  def index
    @favorite = Favorite.find_by(recipe_id: params[:recipe_id])
    @notes = Note.where(favorite_id: @favorite.id)
    render json:@notes
  end

  def create
    @favorite = Favorite.find_by(recipe_id: params[:recipe_id], user_id: params[:user_id])
    @note = Note.create(content: params[:content], favorite_id: @favorite.id)
    render json: @note
  end

  def update
    @note = Note.find(params[:note_id])
    @note.update(content: params[:content])
    render json:@note
  end

  def destroy
    @note = Note.find(params[:note_id]).destroy
  end


  private

  def note_params
    params.permit(:favorite_id, :content)
  end


end
