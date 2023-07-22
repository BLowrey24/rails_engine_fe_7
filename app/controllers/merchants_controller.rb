class MerchantsController < ApplicationController
  def index
    @facade = EngineFacade.new
  end
end