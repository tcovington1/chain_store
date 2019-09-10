# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do
  store = Store.create(
    store_name: Faker::Company.name
    )
    # physician will create 10 physicians, then 
    # it will generate 10 patients per physican
    # 10 appoints for each physician
    10.times do 
      product = Product.create(
        product_name: Faker::Device.model_name,
        product_price: Faker::Number.within(range: 1..100),
        store_id: store.id
      )
     Review.create(
      name: Faker::Name.name,
      subject: Faker::Quote.singular_siegler,
      message: Faker::Quote.famous_last_words,
      product_id: product.id
      
      )
      
      
  end
end

puts 'Data seeded.'