class MerchantsController < ApplicationController
  def index
    @facade = EngineFacade.new(params)
  end

  def show
    @merchant = EngineFacade.new(params).get_merchant
  end
end