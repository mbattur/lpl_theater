class OrderMailer < ApplicationMailer
  default from: ENV["DEFAULT_FROM_EMAIL"]

  def ticket_purchase_email(order)
    @user = order.customer
    @order = order

    mail(to: @user.email, subject: "Movie ticket purchase confirmation")
  end
end
