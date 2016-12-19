class Plan < ActiveRecord::Base
  has_many :subscriptions

  include Koudoku::Plan
  
  Plan.create({
      name: 'Basic',
      price: 18.00,
      interval: 'month',
      stripe_id: 'basic',
      features: ['2 Listings', '1 Page', '1 User', '1 Organization'].join("\n\n"),
      display_order: 1
    })

    Plan.create({
      name: 'Basic Plus',
      highlight: true, # This highlights the plan on the pricing page.
      price: 28.00,
      interval: 'month',
      stripe_id: 'basic-plus',
      features: ['5 Listings', '3 Pages', '3 Users', '3 Organizations'].join("\n\n"),
      display_order: 2
    })

    Plan.create({
      name: 'Social',
      price: 68.00, 
      interval: 'month',
      stripe_id: 'social', 
      features: ['Unlimited Listings', '10 Pages', '10 Users', '10 Organizations'].join("\n\n"), 
      display_order: 3
    })
  
end
