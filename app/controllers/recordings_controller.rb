class RecordingsController < ApplicationController

  def index
    @recordings = Recording.where(deleteStatus: false)
  end

  def show
    @recording = Recording.find(params[:id])
  end

  def new
    @recording = Recording.new
  end

  def create
    @recording = Recording.new(recording_params)

    if @recording.save
      redirect_to(recordings_path)
    else
      render(:new, status: :unprocessable_entity)
    end
  end

  def edit
    @recording = Recording.find(params[:id])
  end

  def update
    @recording = Recording.find(params[:id])

    if @recording.update(recording_params)
      # redirect_to(@recording)
      redirect_to(recordings_path)
      # redirect_to(update_recording_path(@recording))
    else
      render(:edit, status: :unprocessable_entity)
    end
  end

  def destroy
    @recording = Recording.find(params[:id])
    @recording.update(deleteStatus: true)
    redirect_to(recordings_path)
  end

  private
  def recording_params
    params.require(:recording).permit(:returnDate, :employee_id, :equipment_id)
  end
  
end