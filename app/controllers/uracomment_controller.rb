class UracommentController < ApplicationController
    def create
        @uracomment = Uracomment.new(params[:uracomment].permit(:urapost_id, :name, :body))
        @uracomment.save
        redirect_to uraposts_show_path(params[:uracomment]['urapost_id'])
      end
end
