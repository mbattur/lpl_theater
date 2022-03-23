class OrderMailer < ApplicationMailer
  helper DateFormatHelper

  default from: ENV["DEFAULT_FROM_EMAIL"]

  def ticket_purchase_email(order)
    @user = order.customer
    @order = order

    mail(to: @user.email, subject: "Movie Tickets Purchase Confirmation")
  end
end
