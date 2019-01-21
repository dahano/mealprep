addFoodItemsToList = function() {
  // Get position
  var mealList = document.getElementsByClassName('meal-card-list')[0]
  var mealListName = document.getElementById("meal-card-name").value
  var mealListAmount = document.getElementById("meal-card-amount").value

  var createLi = document.createElement("LI");
  var concatName = document.createTextNode(mealListName + mealListAmount)

  createLi.className = "list-inline-item list-group-item";

  console.log("listname: " + mealListName)
  console.log("ListAmount: " + mealListAmount)

  createLi.appendChild(concatName);
  mealList.appendChild(createLi)
}
