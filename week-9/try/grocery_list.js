// Create an object with a grocery list
groceryList = {
  "banana": 5,
  "milk carton": 1,
  "egg dozen": 1,
  "chicken":1,
  "oranges":2
};

//add an item on the grocery list
groceryList.bread = 1;

//Create a function to add quantities to a list
groceryList.add = function(food_item,qqty) {
   groceryList[food_item] += qqty    // this[food_item] += qqty
//   console.log(food_item[qqty]) // => returns h itn the chicken
};

//Create a function to delete on item on the list
groceryList.delete = function(food_item,qqty) {
   groceryList[food_item] -= qqty    // this[food_item] += qqty
//   console.log(food_item[qqty]) // => returns h itn the chicken
};

//Create a function to print the list
  groceryList.toString = function() {
    var str = ""
    for (var item in groceryList){
      if (typeof this[item] != 'function') {//to avoid printing the property that are a function
        if (str == '') {str +=  groceryList[item] +" "+ item} //to make sure to have a comma at the begining except fot the first item
        else {str += ", " + groceryList[item] + " " + item}
      }
    }
    return str
  }



console.log(groceryList);// will return the object, including the functions: add: [Function], delete: [Function].... not pretty at all
//print the quantity for a specific item
console.log(groceryList.banana + " bananas");//=> 5 bananas
console.log(groceryList["banana"] + " bananas");// => 5 bananas
//Adds a chicken
groceryList.add("chicken",1);
console.log(groceryList["chicken"] + " chickens");// 2+. chickens
//Deletes 4 bananas
groceryList.delete("banana",4);
//print the updated grocery list
console.log(groceryList.toString()); // without the functions and nicely done