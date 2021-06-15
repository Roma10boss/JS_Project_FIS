# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Gift.destroy_all

links = [
"https://www.amazon.com/Fjallraven-Foldsack-No-Daypack-Black/dp/B00BHZU93A/ref=sr_1_1?dchild=1&keywords=fjallraven%2B-%2Bfoldsack%2Bno.%2B1%2Bbackpack&qid=1623433909&sr=8-1&th=1",
"https://www.amazon.com/H2H-Baseball-Three-Quarter-T-Shirts-CMTTS0174/dp/B08TWGLHK6/ref=sr_1_1?dchild=1&keywords=Mens%2BCasual%2BPremium%2BSlim%2BFit%2BT-Shirt&qid=1623434498&sr=8-1&th=1",
"https://www.amazon.com/TACVASEN-Cotton-Lightweight-Military-Ourdoor/dp/B07N3WWVT8/ref=sr_1_10?dchild=1&keywords=Mens+Cotton+Jacket&qid=1623434571&sr=8-10",
"https://www.amazon.com/H2H-Casual-Sleeve-V-Neck-KMTTL0374/dp/B017XIFZ0Q/ref=sr_1_10?dchild=1&keywords=Mens%2BCasual%2BSlim%2BFit%2Btshirt&qid=1623434710&sr=8-10&th=1",
"https://www.amazon.com/John-Hardy-Legends-Station-Bracelet/dp/B07BYRBBZD/ref=sr_1_5?dchild=1&keywords=John+Hardy+Women%27s+Legends+Naga+Gold+695&qid=1623434775&sr=8-5",
"https://www.amazon.com/Hafeez-Center-Diamond-Eternity-Yellow-Gold/dp/B076SNXLRG/ref=sr_1_fkmr2_2?dchild=1&keywords=solid+gold+petite+micro+pave+jewelry&qid=1623434850&sr=8-2-fkmr2",
"https://www.amazon.com/Double-Fair-Gorgeous-Promise-Engagement/dp/B07DXV5588/ref=sr_1_3?dchild=1&keywords=White+Gold+Plated+Princess+ring&qid=1623434913&sr=8-3",
"https://www.amazon.com/Pierced-Owl-Plated-Stainless-Earrings/dp/B07NPVDPJ5/ref=sr_1_1?dchild=1&keywords=Pierced+Owl+Rose+Gold+Plated+Stainless&qid=1623434960&sr=8-1",
"https://www.amazon.com/Western-Digital-Elements-Portable-External/dp/B06W55K9N6/ref=sr_1_3?dchild=1&keywords=WD+2TB+Elements+Portable+External+H&qid=1623435001&sr=8-3",
"https://www.amazon.com/SanDisk-SSD-PLUS-Internal-SDSSDA-1T00-G26/dp/B07D998212/ref=sr_1_3?dchild=1&keywords=SanDisk+SSD+PLUS+1TB+Internal+SSD&qid=1623435043&sr=8-3",
"https://www.amazon.com/Silicon-Power-A55-NAND-SATA3/dp/B075R4T536/ref=sr_1_4?dchild=1&keywords=Silicon+Power+256GB+SSD+3D+NAND+A55&qid=1623435176&sr=8-4",
"https://www.amazon.com/Gaming-Drive-Playstation-Portable-External/dp/B07HKN92MZ/ref=sr_1_3?dchild=1&keywords=WD+4TB+Gaming+Drive+Works+with+Play&qid=1623435222&sr=8-3",
"https://www.amazon.com/Acer-SB220Q-Inches-Ultra-Thin-Monitor/dp/B08KG4Z5HF/ref=sr_1_2?dchild=1&keywords=Acer+SB220Q+bi+21.5+inches+Full+HD&qid=1623435262&sr=8-2",
"https://www.amazon.com/Samsung-49-Inch-Curved-Monitor-LC49HG90DMNXZA/dp/B072C7TNC5/ref=sr_1_1?dchild=1&keywords=Samsung+49-Inch+CHG90+144Hz+Curved&qid=1623435322&sr=8-1",
"https://www.herlifew.com/index.php?main_page=product_info&products_id=770880",
"https://www.amazon.com/WJC1044-Womens-Leather-Quilted-Motorcycle/dp/B01LZHMQ58/ref=sr_1_2?dchild=1&keywords=Lock+and+Love+Women%27s+Removable+Hood&qid=1623435455&sr=8-2",
"https://www.amazon.com/Twinklady-Windbreaker-Raincoats-Waterproof-Lightweight/dp/B07S3T76G1/ref=cs_sr_dp_5?dchild=1&keywords=rain+jacket+women+windbreaker+striped&qid=1623435484&sr=8-5",
"https://www.amazon.com/Made-Johnny-WT1037-Sleeve-Shirring/dp/B01E6D2LXA/ref=sr_1_3?dchild=1&keywords=MBJ%2BWomen%27s%2BSolid%2BShort%2BSleeve%2BBoat&qid=1623435524&sr=8-3&th=1",
"https://www.amazon.com/Opna-Womens-Moisture-Wicking-Athletic/dp/B015TC8Q2W/ref=sr_1_5?dchild=1&keywords=Opna%2BWomen%27s%2BShort%2BSleeve%2BMoisture&qid=1623435563&sr=8-5&th=1",
"https://www.amazon.com/DANVOUY-Womens-Casual-Graphic-T-Shirt/dp/B07TBD2JWX/ref=sr_1_5?dchild=1&keywords=danvouy%2Bwomens%2Btshirt%2Bcasual%2Bcotton&qid=1623435600&sr=8-5&th=1"
]

images  = [
"https://images-na.ssl-images-amazon.com/images/I/81fPKd-2AYL._AC_SL1500_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/610De20sjQL._AC_UX569_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/71a007b29gL._AC_UX679_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/71YXzeOuslL._AC_UX569_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/71MQ9Dj8XxL._AC_UY535_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/614bIzECDiL._AC_UY535_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/716pmgMKzLL._AC_UY625_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/51UDEzMJVpL._AC_UX679_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/71VB--jaeSL._AC_SX679_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/61U7T1koQqL._AC_SL1500_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/71X0gCT-RHL._AC_SX679_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/61mtL65D4cL._AC_SX466_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/81rRq2LXlOL._AC_SX679_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/81Zt42ioCgL._AC_SL1500_.jpg",
"data:image/jpeg;base64,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",
"https://images-na.ssl-images-amazon.com/images/I/71%2BCyBHlM7L._AC_UY741_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/71HblAHs5xL._AC_UY741_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/81ZyzEStYWL._AC_UX569_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/51eg55uWmdL._AC_UX569_.jpg",
"https://images-na.ssl-images-amazon.com/images/I/61pHAEJ4NML._AC_UX679_.jpg"
]

gifts = [
{
"id": 1,
"title": "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
"price": 109.95,
"description": "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
"category": "men's clothing",
#"image": "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",

},
{
"id": 2,
"title": "Mens Casual Premium Slim Fit T-Shirts ",
"price": 22.3,
"description": "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
"category": "men's clothing",
"image": "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg"
},
{
"id": 3,
"title": "Mens Cotton Jacket",
"price": 55.99,
"description": "great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.",
"category": "men's clothing",
"image": "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg"
},
{
"id": 4,
"title": "Mens Casual Slim Fit",
"price": 15.99,
"description": "The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.",
"category": "men's clothing",
"image": "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg"
},
{
"id": 5,
"title": "John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
"price": 695,
"description": "From our Legends Collection, the Naga was inspired by the mythical water dragon that protects the ocean's pearl. Wear facing inward to be bestowed with love and abundance, or outward for protection.",
"category": "jewelery",
"image": "https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg"
},
{
"id": 6,
"title": "Solid Gold Petite Micropave ",
"price": 168,
"description": "Satisfaction Guaranteed. Return or exchange any order within 30 days.Designed and sold by Hafeez Center in the United States. Satisfaction Guaranteed. Return or exchange any order within 30 days.",
"category": "jewelery",
"image": "https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg"
},
{
"id": 7,
"title": "White Gold Plated Princess",
"price": 9.99,
"description": "Classic Created Wedding Engagement Solitaire Diamond Promise Ring for Her. Gifts to spoil your love more for Engagement, Wedding, Anniversary, Valentine's Day...",
"category": "jewelery",
"image": "https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg"
},
{
"id": 8,
"title": "Pierced Owl Rose Gold Plated Stainless Steel Double",
"price": 10.99,
"description": "Rose Gold Plated Double Flared Tunnel Plug Earrings. Made of 316L Stainless Steel",
"category": "jewelery",
"image": "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg"
},
{
"id": 9,
"title": "WD 2TB Elements Portable External Hard Drive - USB 3.0 ",
"price": 64,
"description": "USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10, Windows 8.1, Windows 7; Reformatting may be required for other operating systems; Compatibility may vary depending on user’s hardware configuration and operating system",
"category": "electronics",
"image": "https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg"
},
{
"id": 10,
"title": "SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s",
"price": 109,
"description": "Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published specifications and internal benchmarking tests using PCMark vantage scores) Boosts burst write performance, making it ideal for typical PC workloads The perfect balance of performance and reliability Read/write speeds of up to 535MB/s/450MB/s (Based on internal testing; Performance may vary depending upon drive capacity, host device, OS and application.)",
"category": "electronics",
"image": "https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg"
},
{
"id": 11,
"title": "Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5",
"price": 109,
"description": "3D NAND flash are applied to deliver high transfer speeds Remarkable transfer speeds that enable faster bootup and improved overall system performance. The advanced SLC Cache Technology allows performance boost and longer lifespan 7mm slim design suitable for Ultrabooks and Ultra-slim notebooks. Supports TRIM command, Garbage Collection technology, RAID, and ECC (Error Checking & Correction) to provide the optimized performance and enhanced reliability.",
"category": "electronics",
"image": "https://fakestoreapi.com/img/71kWymZ+c+L._AC_SX679_.jpg"
},
{
"id": 12,
"title": "WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive",
"price": 114,
"description": "Expand your PS4 gaming experience, Play anywhere Fast and easy, setup Sleek design with high capacity, 3-year manufacturer's limited warranty",
"category": "electronics",
"image": "https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg"
},
{
"id": 13,
"title": "Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin",
"price": 599,
"description": "21. 5 inches Full HD (1920 x 1080) widescreen IPS display And Radeon free Sync technology. No compatibility for VESA Mount Refresh Rate: 75Hz - Using HDMI port Zero-frame design | ultra-thin | 4ms response time | IPS panel Aspect ratio - 16: 9. Color Supported - 16. 7 million colors. Brightness - 250 nit Tilt angle -5 degree to 15 degree. Horizontal viewing angle-178 degree. Vertical viewing angle-178 degree 75 hertz",
"category": "electronics",
"image": "https://fakestoreapi.com/img/81QpkIctqPL._AC_SX679_.jpg"
},
{
"id": 14,
"title": "Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor (LC49HG90DMNXZA) – Super Ultrawide Screen QLED ",
"price": 999.99,
"description": "49 INCH SUPER ULTRAWIDE 32:9 CURVED GAMING MONITOR with dual 27 inch screen side by side QUANTUM DOT (QLED) TECHNOLOGY, HDR support and factory calibration provides stunningly realistic and accurate color and contrast 144HZ HIGH REFRESH RATE and 1ms ultra fast response time work to eliminate motion blur, ghosting, and reduce input lag",
"category": "electronics",
"image": "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg"
},
{
"id": 15,
"title": "BIYLACLESEN Women's 3-in-1 Snowboard Jacket Winter Coats",
"price": 56.99,
"description": "Note:The Jackets is US standard size, Please choose size as your usual wear Material: 100% Polyester; Detachable Liner Fabric: Warm Fleece. Detachable Functional Liner: Skin Friendly, Lightweigt and Warm.Stand Collar Liner jacket, keep you warm in cold weather. Zippered Pockets: 2 Zippered Hand Pockets, 2 Zippered Pockets on Chest (enough to keep cards or keys)and 1 Hidden Pocket Inside.Zippered Hand Pockets and Hidden Pocket keep your things secure. Humanized Design: Adjustable and Detachable Hood and Adjustable cuff to prevent the wind and water,for a comfortable fit. 3 in 1 Detachable Design provide more convenience, you can separate the coat and inner as needed, or wear it together. It is suitable for different season and help you adapt to different climates",
"category": "women's clothing",
"image": "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg"
},
{
"id": 16,
"title": "Lock and Love Women's Removable Hooded Faux Leather Moto Biker Jacket",
"price": 29.95,
"description": "100% POLYURETHANE(shell) 100% POLYESTER(lining) 75% POLYESTER 25% COTTON (SWEATER), Faux leather material for style and comfort / 2 pockets of front, 2-For-One Hooded denim style faux leather jacket, Button detail on waist / Detail stitching at sides, HAND WASH ONLY / DO NOT BLEACH / LINE DRY / DO NOT IRON",
"category": "women's clothing",
"image": "https://fakestoreapi.com/img/81XH0e8fefL._AC_UY879_.jpg"
},
{
"id": 17,
"title": "Rain Jacket Women Windbreaker Striped Climbing Raincoats",
"price": 39.99,
"description": "Lightweight perfet for trip or casual wear---Long sleeve with hooded, adjustable drawstring waist design. Button and zipper front closure raincoat, fully stripes Lined and The Raincoat has 2 side pockets are a good size to hold all kinds of things, it covers the hips, and the hood is generous but doesn't overdo it.Attached Cotton Lined Hood with Adjustable Drawstrings give it a real styled look.",
"category": "women's clothing",
"image": "https://fakestoreapi.com/img/71HblAHs5xL._AC_UY879_-2.jpg"
},
{
"id": 18,
"title": "MBJ Women's Solid Short Sleeve Boat Neck V ",
"price": 9.85,
"description": "95% RAYON 5% SPANDEX, Made in USA or Imported, Do Not Bleach, Lightweight fabric with great stretch for comfort, Ribbed on sleeves and neckline / Double stitching on bottom hem",
"category": "women's clothing",
"image": "https://fakestoreapi.com/img/71z3kpMAYsL._AC_UY879_.jpg"
},
{
"id": 19,
"title": "Opna Women's Short Sleeve Moisture",
"price": 7.95,
"description": "100% Polyester, Machine wash, 100% cationic polyester interlock, Machine Wash & Pre Shrunk for a Great Fit, Lightweight, roomy and highly breathable with moisture wicking fabric which helps to keep moisture away, Soft Lightweight Fabric with comfortable V-neck collar and a slimmer fit, delivers a sleek, more feminine silhouette and Added Comfort",
"category": "women's clothing",
"image": "https://fakestoreapi.com/img/51eg55uWmdL._AC_UX679_.jpg"
},
{
"id": 20,
"title": "DANVOUY Womens T Shirt Casual Cotton Short",
"price": 12.99,
"description": "95%Cotton,5%Spandex, Features: Casual, Short Sleeve, Letter Print,V-Neck,Fashion Tees, The fabric is soft and has some stretch., Occasion: Casual/Office/Beach/School/Home/Street. Season: Spring,Summer,Autumn,Winter.",
"category": "women's clothing",
"image": "https://fakestoreapi.com/img/61pHAEJ4NML._AC_UX679_.jpg"
}
]

gifts.each_with_index do |gift, index|
    gift[:image] = images[index]
    gift['link'] = links[index]
    Gift.create(gift)
end