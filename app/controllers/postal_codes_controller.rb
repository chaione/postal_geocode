class PostalCodesController < ApplicationController
  respond_to :json
  def show
    @code = PostalCode.search(params[:id])
    respond_with @code
  end
end
