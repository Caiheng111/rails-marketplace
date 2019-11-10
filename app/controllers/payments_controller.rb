class PaymentsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:webhook]
  def success
   
    cart_id=params['cartId']
    @cart=Cart.find(cart_id)

    

  end

  def webhook
    payment_id =params[:data][:object][:payment_intent]
    payment =Stripe::PaymentIntent.retrieve(payment_id)

    listing_id =payment.metadata.listing.listing_id
    user_id =payment.metadata.user_id
    p "listing_id= " + listing_id
    p "user id =" + user_id
    p params
  end
end
