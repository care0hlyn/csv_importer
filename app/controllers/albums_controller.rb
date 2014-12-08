class AlbumsController < ApplicationController

  def index
    @albums = Album.all.sort_by{|a| a.release_year ? a.release_year : 0 }
  end

  def import
    begin
      Album.import(params[:file])
      redirect_to root_url, notice: "File imported."
    rescue
      redirect_to root_url, notice: "Invalid CSV file format."
    end
  end
end
