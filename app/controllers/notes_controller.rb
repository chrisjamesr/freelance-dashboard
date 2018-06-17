class NotesController < ApplicationController

  def create
    note = Note.new(note_params)
    if note.save
      render json: note
    end
  end

  def index
    notes = Note.where(project_id: params[:project])
    render json: notes
  end

  def show
    note = Note.find(params[:id])
    render json: note
  end

  def update
    note = Note.find(params[:id])
    note.update(note_params)
    if note.save
      render json: note
    end
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy
    render json: {status: 200}
  end

  private

  def note_params
    params.require(:note).permit(:task_id, :project_id, :content)
  end

end
