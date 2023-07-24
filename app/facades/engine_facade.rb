class EngineFacade
  attr_reader :merchant_id

  def initialize(params)
    @merchant_id = params[:id]
  end

  def all_merchants
    EngineService.all_merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def get_merchant
    found_merchant = find_merchant_by_id(@merchant_id)[:data]
    Merchant.new(found_merchant)
  end

  def find_merchant_by_id(id)
    EngineService.find_merchant(id)
  end
end