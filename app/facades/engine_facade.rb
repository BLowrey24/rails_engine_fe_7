class EngineFacade
  def get_merchants
    EngineService.all_merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end
end