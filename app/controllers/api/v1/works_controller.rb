class Api::V1::WorksController < Api::V1::BaseController
  respond_to :json

  def index
    respond_with WorksService.new.data
  end
end
