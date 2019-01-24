addFoodItemsToList = function() {
  // Get position
  var columnName = document.getElementById("meow").parentNode.children[0].innerText
  var mealList = document.getElementsByClassName('meal-card-list')[0]
  var mealListName = document.getElementById("meal-card-name").value
  var mealListAmount = document.getElementById("meal-card-amount").value

  var createLi = document.createElement("LI");
  createLi.className = "list-inline-item list-group-item"
  var concatName = document.createTextNode(mealListName + mealListAmount)

  console.log("Col Name: " + columnName);
  console.log("listname: " + mealListName)
  console.log("ListAmount: " + mealListAmount)

  createLi.appendChild(concatName);
  mealList.appendChild(createLi)
}

function newMealCard() {
  alert("Meow!")
}
