apple = Product.create(name: 'Apple', photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Red_Apple.jpg/220px-Red_Apple.jpg')
orange = Product.create(name: 'Orange', photo: 'http://www.remedio-caseiro.com/wp-content/uploads/2014/02/laranja-300x266.jpg')

carrefour = Market.create(name: "Carrefour bancários", latitude: "-7.1476598", longitude: "-34.8479128")
extra = Market.create(name: "Extra bancários", latitude: "-7.1572518", longitude: "-34.8405743")

# Adicionando os produtos aos mercados
carrefour.products << apple
carrefour.products << orange
extra.products << apple

# Adicionando preços
products_carrefour = ProductMarket.where(market: carrefour)
products_carrefour.first.value = 3.0
products_carrefour.first.save

products_carrefour.second.value = 2.0
products_carrefour.second.save

# Adicionando preços
products_extra = ProductMarket.where(market: extra)
products_extra.first.value = 3.5
products_extra.first.save