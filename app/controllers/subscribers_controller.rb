class SubscribersController < ApplicationController
before_filter :aunthenticate_user!
def new 

end

def update 

#gets the credit card details submitted in the form
    token = params[:stripeToken]

    #create a customer
    customer = Stripe::Customer.create(
      card: token,
      plan: 1530,
      email: current_user.email
    )

    current_user.subscribed = true
    current_user.stripeid = customer.id
    current_user.save


    redirect_to monkeys_path, notice: "Your subscription was set up successfully! Happy learning!"



end

end
