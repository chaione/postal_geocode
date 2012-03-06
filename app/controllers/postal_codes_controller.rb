class PostalCodesController < ApplicationController
  respond_to :json
  def show
    response.headers['Cache-Control'] = 'public, max-age=86400'
    @code = PostalCode.search(params[:id])
    respond_with @code
  end
end
