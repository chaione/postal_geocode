class PostalCodesController < ApplicationController
  respond_to :json
  caches_action :show
  def show
    @code = PostalCode.search(params[:id])
    respond_with @code
  end
end
