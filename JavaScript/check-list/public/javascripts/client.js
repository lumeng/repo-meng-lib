$(function() {

// Step 1
// This code is executed when someone clicks the "Add Item" button
// at the top right of the shopping-item
// -------------------
    $(".add-item").on('click', function(event) {
        event.preventDefault();
        var listItem = $(".item-input").val(); // grab the value in the input field

        // print listItem
        // console.log('listItem:' + listItem);

        var itemHtml = "<li><span class='item-check'></span><span class='item-text'>" + listItem + "</span><span class='item-remove'></span></li>";

        // Add the itemHtml section we created for you above to the shopping-list
        var shoppingListHtml = $(".shopping-list").html();
        // var shoppingListHtml = $(".shopping-list").val();


        // print initial value of the shopping list
        // console.log('shoppingListHtml initial:' + shoppingListHtml);

        // append the inputed item
        $(itemHtml).prependTo(".shopping-list");

        var shoppingListAppendedHtml = $(".shopping-list").html();

        // print initial value of the shopping list
        // console.log('shoppingListHtml appended:' + shoppingListAppendedHtml);

        // Remove the text the user entered from item-input
        $(".item-input").val('');
    });
// -------------------


// Step 2
// -------------------
// This code is executed when someone clicks the "X" button
// at the top right of the shopping-item
    $(".shopping-list").on('click', '.item-remove', function(event) {
        // Use event.currentTarget to remove the shopping item from the shopping list
        var shoppingListHtml = $(".shopping-list").html();
        // $(event.currentTarget).children("ul").remove();(".shopping-list");
        // console.log("event.currentTarget.val(): " + event.currentTarget.val());

        $(event.currentTarget).parent().remove();

    });
// -------------------

// Step 3
// This code is executed when someone clicks the checkbox in the shopping-item section
// -------------------
    $(".shopping-list").on('click', '.item-check', function(event) {
        // Use event.currentTarget to add and remove the "complete" class to the checkbox
        console.log('event.currentTarget before: ' + $(event.currentTarget).html());
        $(event.currentTarget).toggleClass('complete');
        console.log('event.currentTarget after: ' + $(event.currentTarget).html());

    });
// -------------------

//Additional Challenges
//If you add an item with no text, it adds a blank box. This is a bug! Fix it.
//Add a counter that tells the user how many items are in your shopping list

});
