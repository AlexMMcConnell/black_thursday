class SalesEngine

  attr_reader :items,
              :merchants


  def initialize(merch_item_hash)
    @merchants = MerchantsRepository.new(merch_item_hash[:merchants])
    @items = ItemRepository.new(merch_item_hash[:items])
  end

  def analyst(items, merchant)
    SalesAnalyst.new(items, merchants)
  end

  def self.from_csv(invoice_hash)
    InvoiceRepository.new(invoice_hash[:invoices])
  end

end
