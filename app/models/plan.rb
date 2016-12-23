class Plan < ActiveRecord::Base
  has_many :subscriptions

  include Koudoku::Plan
  Plan.create({
      name: 'FREE',
      price: 0.00,
      interval: 'month',
      stripe_id: 'free',
      features: ['1 Unverified Listing', '1 Featured Image', '1 Category', '1 Highlight', '1 Location', '1 Featured Question'].join("\n\n"),
      display_order: 1
    })
  
  
  Plan.create({
      name: 'Basic',
      price: 15.00,
      highlight: true, # This highlights the plan on the pricing page.
      interval: 'month',
      stripe_id: 'basic',
      features: ['2 Verified Listings', 'Unlimited Categories', 'Unlimited Highlights', 'Unlimited Locations', '5 Featured Questions', 'Meta Word Search', 'Reservation Listing', 'Delivery Listing', 'FRIENDS Reward'].join("\n\n"),
      display_order: 2
    })

    Plan.create({
      name: 'Basic Plus',
      price: 28.00,
      interval: 'month',
      stripe_id: 'basic-plus',
      features: ['5 Verified Listings', 'Unlimited Categories', 'Unlimited Highlights', 'Unlimited Locations', '5 Featured Questions', 'Meta Word Search', 'Reservation Listing', 'Delivery Listing', 'FRIENDS Reward', 'Email Function', 'Review/Feedback Add-on'].join("\n\n"),
      display_order: 3
    })

    Plan.create({
      name: 'Social',
      price: 68.00, 
      interval: 'month',
      stripe_id: 'social', 
      features: ['10 Verified Listings', 'Unlimited Categories', 'Unlimited Highlights', 'Unlimited Locations', '5 Featured Questions', 'Meta Word Search', 'Reservation Listing', 'Delivery Listing', 'FRIENDS Reward', 'Email Function', 'Review/Feedback Add-on'].join("\n\n"), 
      display_order: 4
    })
end
