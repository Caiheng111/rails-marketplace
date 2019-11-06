class PaymentsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:webhook]
  def success
    # p params
    # user_id=params['userId']
    # listing_id=params['listingId']

    # @listing=Listing.find(listing_id)
    # @user_email=User.find(user_id).email

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
