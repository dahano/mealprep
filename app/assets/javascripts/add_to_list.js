function grabFoodValues() {
  var foodname, p, f, c

  foodname = document.getElementById('macro-name').textContent;
  p = document.getElementsByClassName('card-protein')[1].textContent;
  f = document.getElementsByClassName('card-fat')[1].textContent;
  c = document.getElementsByClassName('card-carbs')[1].textContent;

  var foodItem = {
    foodName: foodname,
    protein: p,
    fat: f,
    carbs: c
  }

  return foodItem
}

function createLiNode(addedClassName = '') {
  var createLi = document.createElement("LI");
  createLi.className = "list-inline-item " + addedClassName
  return createLi
}

function createUl() {
  var createUl = document.createElement("UL");
  createUl.className = "list-inline"
  return createUl
}

function calculateFoodMacros(oneGram, amount) {
  return oneGram * amount
}

function addFoodItemsToList() {

  // Get position [0]
  var mealList = document.getElementsByClassName('meal-card-list')[0]

  // mealListAmount will be used to calculate the total values for the macros
  var mealListAmount = document.getElementById("meal-card-amount").value

  var newFoodItem = {
    foodName: document.createTextNode(grabFoodValues().foodName),
    amount: document.createTextNode(mealListAmount),
    protein: document.createTextNode(calculateFoodMacros(grabFoodValues().protein, mealListAmount)),
    fat: document.createTextNode(calculateFoodMacros(grabFoodValues().fat, mealListAmount)),
    carbs: document.createTextNode(calculateFoodMacros(grabFoodValues().carbs, mealListAmount))
  }

  var foodNameLi = createLiNode();
  foodNameLi.appendChild(newFoodItem.foodName)

  var foodAmountLi = createLiNode();
  foodAmountLi.appendChild(newFoodItem.amount)

  var foodProteinLi = createLiNode('card-protein');
  foodProteinLi.appendChild(newFoodItem.protein)

  var foodFatLi = createLiNode('card-fat');
  foodFatLi.appendChild(newFoodItem.fat)

  var foodCarbsLi = createLiNode('card-carbs');
  foodCarbsLi.appendChild(newFoodItem.carbs)

  mealUl = createUl();

  mealUl.appendChild(foodNameLi)
  mealUl.appendChild(foodAmountLi)
  mealUl.appendChild(foodProteinLi)
  mealUl.appendChild(foodFatLi)
  mealUl.appendChild(foodCarbsLi)

  // Append newly constrcuted markup to DOM
  mealList.appendChild(mealUl)

}
