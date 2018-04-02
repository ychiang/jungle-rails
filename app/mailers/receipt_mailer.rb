class ReceiptMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_confirmation_email(order)
    @order = order
    mail(to: @order.email, subject: "Confirmation OrderID #{@order.id}")
  end 
end 