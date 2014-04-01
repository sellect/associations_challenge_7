##![alt text](http://dzdsb51gxq7uo.cloudfront.net/assets/sellect_logo-5e41bd3b32888b0702c4ae82285d3ad1.png)
###Associations Code Challenge


This challenge is to assess your ability to write concise and meaningful data relationships using Rails ActiveRecord. Model structure is the focus of this exercise, so views and controllers are not required. Example outputs are at the bottom.

___

######INSTRUCTIONS

Fork this repo and complete the tasks below. Once complete please submit a pull request.

___

######TASK #1

**Create 3 models:**

- Order
- Customer
- Note

**Column requirements:**

- Order has a unique identifier column **number** that consists of the letter **R** followed by 9 random numbers, generated upon order creation
- Note has a column **message**
- Customer has a unique column **email**

######TASK #2

**Design associations such that:**

- Notes can be associated with orders
- Notes can be associated with customers
- Order is associated to one customer
- Customer can be associated with multiple orders

######TASK #3

**Design your model associations to retrieve a customer's notes ( which includes notes associated with the customer and the notes associated with the customer's orders )**


####EXAMPLE OUTPUTS

retrieve customer's orders

```ruby

customer = Customer.first
customer.orders

# => [#<Order id: 1 ... >, #<Order id: 2 ... >]

```

retrieve customer's notes

```ruby

customer = Customer.first
customer.notes

# => [#<Note id: 1 ... >, #<Note id: 2 ... >]

```

retrieve order's notes

```ruby

order = Order.first
order.notes

# => [#<Note id: 1 ... >, #<Note id: 2 ... >]

```
