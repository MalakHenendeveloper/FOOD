import 'package:food/core/Resources/AppImages.dart';

class CategoryModel {
  String name;
  String image;
  List<ProductModel> products;

  CategoryModel({
    required this.name,
    required this.image,
    required this.products,
  });
}

class ProductModel {
  String ?id;
  String? quantity;
  String name;
  String image;
  double price;
  String description;
  List<String> ingredients;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.ingredients,
    this.id, this.quantity='1'
  });
}

List<CategoryModel> categories = [
  CategoryModel(
    name: "Pizza",
    image: Appimages.pizza,
    products: [
      ProductModel(
        name: "Margherita",
        image: Appimages.pizza1,
        price: 10.0,
        description:
            "The Margherita pizza is a classic Italian dish loved worldwide. Made with a thin, crispy crust, it features a rich tomato sauce base topped with fresh mozzarella cheese. The addition of fresh basil leaves gives it a distinct aroma and taste. Olive oil is drizzled over the top before baking to enhance its flavors. The dough is carefully kneaded and fermented to achieve the perfect texture. Baked in a high-temperature oven, it develops a golden-brown crust. This pizza is simple yet packed with flavor, making it a favorite among pizza lovers. Its origins date back to Naples, where it was created as a tribute to Queen Margherita. The balance of acidity from the tomatoes and creaminess from the cheese makes it irresistible. It is best enjoyed with a side of garlic bread or a fresh salad.",
        ingredients: [
          "Tomato Sauce",
          "Mozzarella",
          "Basil",
          "Olive Oil",
          "Dough"
        ],
      ),
      ProductModel(
        name: "Pepperoni",
        image: Appimages.pizza2,
        price: 12.0,
        description:
            "Pepperoni pizza is a deliciously spicy and cheesy delight. The crispy, thin crust is layered with rich tomato sauce and melted mozzarella cheese. The key ingredient is the pepperoni, which adds a smoky and slightly spicy flavor. The fat from the pepperoni melts into the cheese, creating a perfect combination of flavors. Each bite is packed with a crunchy yet chewy texture that makes it irresistible. Pepperoni pizza is one of the most popular pizza varieties worldwide. It originated in the United States and quickly became a staple in pizzerias. The high-temperature baking process ensures a crispy crust with bubbly, golden cheese. Often served with garlic dip or chili flakes for extra flavor. It is a go-to choice for pizza lovers who enjoy a little spice in their meal.",
        ingredients: [
          "Tomato Sauce",
          "Mozzarella",
          "Pepperoni",
          "Olive Oil",
          "Dough"
        ],
      ),
      ProductModel(
        name: "BBQ Chicken",
        image: Appimages.pizza3,
        price: 14.0,
        description:
            "The BBQ Chicken Pizza is a delicious fusion of smoky, tangy, and savory flavors, making it a favorite for pizza lovers who enjoy a unique twist. Instead of the traditional tomato sauce, this pizza features a rich and flavorful BBQ sauce as its base, giving it a sweet and smoky taste. The sauce perfectly complements the grilled chicken, which is tender, juicy, and seasoned to perfection. A generous layer of mozzarella cheese melts beautifully over the toppings, adding a creamy texture that balances the bold flavors of the BBQ sauce.To enhance the taste, thinly sliced onions are scattered across the pizza, providing a slight crunch and a mild sweetness that blends well with the sauce. The crust is baked to perfection, achieving a crispy yet soft texture that holds the toppings together. Some variations may include cilantro for a fresh, zesty touch or even a drizzle of extra BBQ sauce for an intensified flavor.This pizza is perfect for those who love a sweet and savory combination, offering a satisfying bite filled with smoky, cheesy, and meaty goodness. Whether enjoyed on a casual night in or shared with friends, the BBQ Chicken Pizza delivers a delicious and unforgettable experience.",
        ingredients: [
          "BBQ Sauce",
          "Mozzarella",
          "Grilled Chicken",
          "Onions",
          "Dough"
        ],
      ),
      ProductModel(
        name: "Pizza King",
        image: Appimages.pizzaKing,
        price: 22.0,
        description:
            "The Pizza King is a royal feast for those who love loaded pizzas with a variety of toppings. It starts with a hand-tossed dough, which is baked to perfection, achieving a crispy yet chewy texture. The base is coated with a rich tomato sauce, providing a tangy contrast to the creamy mozzarella cheese melted on top. This pizza is packed with an array of fresh vegetables, including mushrooms, olives, and bell peppers, adding a burst of color and flavor. For a more intense taste, a blend of herbs and spices is sprinkled over the toppings, enhancing every bite. The Pizza King is known for its generous amount of cheese and toppings, making it a filling and indulgent choice. Whether you are a fan of veggie-packed pizzas or simply love a rich and satisfying flavor, this pizza truly lives up to its royal name. Perfect for sharing, it guarantees a delightful experience with every slice.",
        ingredients: [
          "Tomato Sauce",
          "Mozzarella",
          "Mushrooms",
          "Olives",
          "Peppers",
          "Dough"
        ],
      ),
      ProductModel(
        name: "Pizza Hut Style",
        image: Appimages.pizzaHut,
        price: 20.0,
        description:
            "The Pizza Hut Style pizza is a delightful treat with its signature thick crust, golden and crispy on the outside while remaining soft and fluffy on the inside. This pizza is generously topped with a rich tomato sauce, delivering a perfect balance of tangy and sweet flavors. A combination of mozzarella and cheddar cheese melts beautifully over the crust, creating an irresistible gooey texture. To enhance the flavor, garlic butter is brushed onto the crust, adding a delicious aroma and a buttery finish. This pizza is known for its cheesy goodness, making every bite satisfying and full of flavor. It is perfect for cheese lovers who enjoy a well-balanced taste of savory cheese, zesty sauce, and a fluffy crust. Whether enjoyed alone or shared with friends and family, this pizza brings the iconic restaurant-style experience to your table. Its rich flavors and satisfying texture make it one of the most popular choices among pizza lovers.",
        ingredients: [
          "Tomato Sauce",
          "Mozzarella",
          "Cheddar",
          "Garlic Butter",
          "Dough"
        ],
      ),
    ],
  ),
  CategoryModel(
    name: "Burger",
    image: Appimages.burger,
    products: [
      ProductModel(
        name: "Cheese Burger",
        image: Appimages.burger1,
        price: 8.0,
        description:
            "A cheeseburger is a timeless fast-food favorite loved by millions. It starts with a juicy beef patty, grilled to perfection, and topped with a slice of melted cheddar cheese. The cheese melts beautifully over the hot patty, adding a rich and creamy taste. Fresh lettuce, tomato slices, and onions provide a crunchy contrast to the softness of the bun. A toasted sesame seed bun holds everything together, adding a slight crunch to each bite. Some variations include pickles or special sauces for added flavor. The balance of flavors makes it a satisfying meal at any time of the day. Originally an American invention, the cheeseburger has spread to every corner of the world. Many restaurants offer gourmet versions with premium ingredients like Wagyu beef and truffle aioli. Whether enjoyed with fries, onion rings, or a milkshake, a cheeseburger is always a great choice.",
        ingredients: [
          "Beef Patty",
          "Cheddar Cheese",
          "Lettuce",
          "Tomato",
          "Bun"
        ],
      ),
      ProductModel(
        name: "Double Burger",
        image: Appimages.DoubleBurger,
        price: 10.0,
        description:
            "The Double Burger is a mouthwatering delight for burger lovers who crave extra meat and flavor. This burger features two thick and juicy beef patties, seasoned to perfection and grilled to achieve a slightly crispy exterior while remaining tender and flavorful on the inside. The double layers of melted cheddar cheese create a creamy and rich taste that perfectly complements the beef.Stacked between a soft, toasted brioche bun, this burger also includes fresh lettuce, ripe tomato slices, and crunchy pickles, adding a refreshing contrast to the rich, savory meat. A generous spread of special sauce, made from a blend of mayonnaise, mustard, ketchup, and spices, enhances the overall taste with a tangy and slightly sweet kick.For extra texture and flavor, the Double Burger may also include crispy bacon, caramelized onions, or even an additional cheese variety like Swiss or American. The combination of ingredients creates a perfect balance of juicy, cheesy, and crispy elements, making each bite a satisfying experience.This burger is ideal for those with a big appetite, delivering double the meat, double the cheese, and double the flavor. Whether served with a side of crispy fries or onion rings, the Double Burger is a true feast that satisfies all cravings for a hearty, indulgent meal.",
        ingredients: [
          "Beef Patty",
          "Cheddar Cheese",
          "Lettuce",
          "Tomato",
          "Special Sauce",
          "Bun"
        ],
      ),
    ],
  ),
  CategoryModel(
    name: "Chinese",
    image: Appimages.chinese,
    products: [
      ProductModel(
        name: "Peking Duck",
        image: Appimages.chinese2,
        price: 12.0,
        description:
            "Peking Duck is a world-famous Chinese dish that has been a symbol of Beijing cuisine for centuries. This dish is known for its crispy, golden-brown skin and tender, juicy meat, making it a delicacy enjoyed by food lovers across the globe. The duck is carefully prepared by inflating its skin, marinating it with a blend of spices and honey, and then roasting it in a traditional oven. This unique cooking process creates an irresistible crispy texture while keeping the meat flavorful and succulent.One of the signature elements of Peking Duck is its sweet and savory hoisin sauce, which adds a rich depth of flavor. The dish is traditionally served with thin, soft Mandarin pancakes, which are used to wrap slices of duck along with fresh cucumber and scallions. The combination of crunchy vegetables, tender duck, and flavorful sauce creates an incredible balance of textures and tastes.The dining experience of Peking Duck is often interactive, as diners assemble their own duck wraps at the table. Some restaurants even carve the duck in front of guests, showcasing the precision and skill required to prepare this iconic dish. The crispy skin is usually served first, while the remaining meat is used in stir-fries or soups, ensuring that no part of the duck goes to waste.A true symbol of Chinese culinary excellence, Peking Duck has been enjoyed for generations, dating back to the imperial kitchens of the Ming Dynasty. Whether eaten in a fine-dining restaurant or a traditional Beijing eatery, this dish provides an unforgettable experience, making it a must-try for anyone who appreciates the art of Chinese cuisine.",
        ingredients: [
          "Duck",
          "Hoisin Sauce",
          "Scallions",
          "Cucumber",
          "Pancakes"
        ],
      ),
      ProductModel(
        name: "Jianbing",
        image: Appimages.chinese3,
        price: 14.0,
        description:
            "Jianbing is one of China's most beloved street foods, often referred to as the Chinese crepe. It is a savory, crispy, and flavorful pancake that is commonly enjoyed as a quick and satisfying breakfast. Originating from northern China, Jianbing has become popular across the country and even internationally, thanks to its unique combination of textures and flavors.The base of Jianbing is made from a batter consisting of wheat and mung bean flour, which is spread thinly over a hot griddle. A fresh egg is cracked onto the batter and spread evenly, giving the crepe a rich, fluffy texture. As it cooks, a variety of savory toppings such as chopped scallions, sesame seeds, and cilantro are sprinkled over the surface.One of the defining characteristics of Jianbing is its crispy fried dough (bao cui), which is placed inside the crepe to add a crunchy contrast to the soft pancake. It is then brushed with a sweet and spicy hoisin-based sauce and sometimes soy sauce or chili paste for an extra kick. The combination of sweet, salty, and spicy flavors makes each bite incredibly satisfying.Jianbing is typically folded multiple times into a compact, handheld wrap, making it a perfect on-the-go meal. Some modern variations include additional fillings such as ham, cheese, or even avocado, adapting the dish to contemporary tastes while keeping its traditional essence.As a symbol of Chinese street food culture, Jianbing showcases the art of balance and simplicity in cooking. Whether eaten from a street vendor in Beijing or a specialty shop abroad, this dish remains an authentic and delicious representation of Chinese culinary craftsmanship.",
        ingredients: [
          "Flour",
          "Eggs",
          "Scallions",
          "Soy Sauce",
          "Crispy Dough"
        ],
      ),
    ],
  ),
  CategoryModel(
    name: "Tacos",
    image: Appimages.tacos,
    products: [
      ProductModel(
        name: "Beef Tacos",
        image: Appimages.BeefTacos,
        price: 6.0,
        description:
            "Tacos are one of the most iconic and beloved dishes in Mexican cuisine, known for their bold flavors, fresh ingredients, and endless variety. A taco consists of a soft or crispy tortilla filled with a flavorful mixture of meat, vegetables, and toppings, making it a perfect handheld meal enjoyed by people around the world.The origins of tacos date back to pre-Hispanic Mexico, where indigenous people used tortillas as edible spoons to hold fillings like fish, beans, and chili peppers. Over time, tacos evolved into a versatile dish, incorporating various meats such as beef, chicken, pork, and seafood, along with a wide range of toppings like cheese, avocado, salsa, and sour cream.One of the key aspects of a great taco is its seasoned protein. Whether it’s grilled chicken, marinated beef, slow-cooked carnitas, or spicy chorizo, the meat is often cooked with a blend of spices, garlic, and lime juice, enhancing its rich taste. The soft or crispy tortilla acts as the perfect vessel, holding the filling while adding a distinct texture to each bite.Tacos are typically served with fresh garnishes such as cilantro, diced onions, and lime wedges, which add brightness and balance to the dish. Traditional salsas, ranging from mild to fiery hot, allow each taco to be customized based on personal taste preferences. Some popular varieties include pico de gallo, salsa verde, and creamy guacamole.In Mexico, tacos are more than just food; they represent a cultural tradition that brings people together. Whether enjoyed at a street food stand, a family gathering, or a high-end restaurant, tacos continue to be a symbol of flavor, history, and culinary excellence. With countless regional variations and modern interpretations, tacos remain a timeless and universally loved dish.",
        ingredients: [
          "Beef",
          "Tortilla",
          "Cheese",
          "Lettuce",
          "Tomato",
          "Sour Cream"
        ],
      ),
      ProductModel(
        name: "Chicken Tacos",
        image: Appimages.tacos,
        price: 7.0,
        description:
            "Tacos are one of the most iconic and beloved dishes in Mexican cuisine, known for their bold flavors, fresh ingredients, and endless variety. A taco consists of a soft or crispy tortilla filled with a flavorful mixture of meat, vegetables, and toppings, making it a perfect handheld meal enjoyed by people around the world.The origins of tacos date back to pre-Hispanic Mexico, where indigenous people used tortillas as edible spoons to hold fillings like fish, beans, and chili peppers. Over time, tacos evolved into a versatile dish, incorporating various meats such as beef, chicken, pork, and seafood, along with a wide range of toppings like cheese, avocado, salsa, and sour cream.One of the key aspects of a great taco is its seasoned protein. Whether it’s grilled chicken, marinated beef, slow-cooked carnitas, or spicy chorizo, the meat is often cooked with a blend of spices, garlic, and lime juice, enhancing its rich taste. The soft or crispy tortilla acts as the perfect vessel, holding the filling while adding a distinct texture to each bite.Tacos are typically served with fresh garnishes such as cilantro, diced onions, and lime wedges, which add brightness and balance to the dish. Traditional salsas, ranging from mild to fiery hot, allow each taco to be customized based on personal taste preferences. Some popular varieties include pico de gallo, salsa verde, and creamy guacamole.In Mexico, tacos are more than just food; they represent a cultural tradition that brings people together. Whether enjoyed at a street food stand, a family gathering, or a high-end restaurant, tacos continue to be a symbol of flavor, history, and culinary excellence. With countless regional variations and modern interpretations, tacos remain a timeless and universally loved dish.",
        ingredients: [
          "Grilled Chicken",
          "Tortilla",
          "Avocado",
          "Lettuce",
          "Cilantro",
          "Lime"
        ],
      ),
    ],
  ),
];
