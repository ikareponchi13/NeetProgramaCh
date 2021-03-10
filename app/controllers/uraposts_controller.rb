class UrapostsController < ApplicationController
  def index
    @uraposts = Urapost.all
    @newUrapost = Urapost.new
  end

  def show
    @urapost = Urapost.find(params[:id])
    @newUracomment = Uracomment.new(:urapost_id => params[:id])
    @uracomments = Uracomment.where(urapost_id: params[:id])
  end

  def create
    @urapost = Urapost.new(params[:urapost].permit(:title))
    @urapost.save
    redirect_to uraposts_index_path
  end

  def delete
    @urapost = Urapost.find(params[:id])
    @urapost.destroy
    redirect_to uraposts_index_path
  end

end
