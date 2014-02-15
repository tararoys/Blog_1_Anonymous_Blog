zoe = Drinker.create(name: "Zoe", phone_number: 111222333)
inara = Drinker.create(name: "Inara", phone_number: 111222333)

forever_nuts = Tea.create(name: "Forever Nuts", description: "Walnut Tea")
chocolate_rocket = Tea.create(name: "Chocolate Rocket", description: "chocolately black tea")

zoe_hates_forever_nuts = Sample.create(drinker_id: zoe.id, tea_id: forever_nuts.id, like: false)
zoe_hates_chocolate_rocket = Sample.create(drinker_id: zoe.id, tea_id: chocolate_rocket.id, like: false)

inara_likes_forever_nuts = Sample.create(drinker_id: inara.id, tea_id: forever_nuts.id, like: true)
inara_likes_chocolate_rocket = Sample.create(drinker_id: inara.id, tea_id: chocolate_rocket.id, like: true)

