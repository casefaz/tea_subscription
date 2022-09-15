

<div align="center">
  <h1>Tea Subscription Service API</h1>
  <img src="https://user-images.githubusercontent.com/98674727/190420043-2cb959ce-576b-4625-a79b-012b1d0f5608.gif">
</div>
<br>

Here you will find information regarding teas, customers, farmers, and subscriptions. It was designed both for the curious tea drinker, and tea seller in mind. For this reason there are extensive details in the columns of the tea table, joins tables for subscriptions and teas that have selected for a particular tier, along with the farmer who grew the tea so the user may better understand the relationship of the farmer to the seller and the farmer to the tea.

- [Schemas](#schemas)
- [Set Up](#setup)
- [Current Endpoints](#endpoints)


## Schemas

![Screen Shot 2022-09-15 at 7 43 26 AM](https://user-images.githubusercontent.com/98674727/190419699-570d9930-9b99-448e-93c4-39a16f34d8a3.png)

<img width="830" alt="Screen Shot 2022-09-13 at 1 14 57 PM" src="https://user-images.githubusercontent.com/98674727/189990640-e5f23d3f-e308-4b42-b6e3-e1edb4283ac6.png">

## Setup

If you'd like to demo this API on your local machine: 

  1. Ensure that you have the prerequisites or quivalent
  2. Clone this repo and navigate to the root folder `cd tea_subscription`
  3. Run `bundle install`
  4. Run test suite with `bundle exec rspec`
  5. Run `rails s`
  
  
## Endpoints

Currently, all endpoints follow RESTful convention. The base URI for this api is `http://localhost:3000/api/v1`

`get '/customers/:customer_id/subscriptions'` will take you to a page with all of a customers subscriptions whether active or cancelled


'patch '/customers/:customer_id/subscriptions/subscription_id' will update the status on the joins table that is `subscriptions`.


'post '/customers/:customer_id/subscriptions' will create a new relationship between `customers` and `tiers` on the `subscriptions` joins table.


