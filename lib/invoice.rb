class Invoice
  attr_reader :id,
              :customer_id,
              :merchant_id,
              :status,
              :created_at,
              :updated_at

  def initialize(new_invoice)
    @id = new_invoice[:id]
    @customer_id = new_invoice[:customer_id]
    @merchant_id = new_invoice[:merchant_id]
    @status = new_invoice[:status]
    @created_at = new_invoice[:created_at]
    @updated_at = new_invoice[:updated_at]
  end
end