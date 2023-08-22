class RecordingsController < ApplicationController
  def index
    @recordings = Recording.all
  end

  def home
  end
end
