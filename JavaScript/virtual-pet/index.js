$(function() {

    // Add a variable "pet_info" equal to a dictionary with the name (string), weight (number), and happiness (number) of your pet
    pet_info = {
        "name": "Moe",
        "weight": 3,
        "happiness": 3
    };

    // Called function to update the name, happiness, and weight of our pet in our HTML
    checkAndUpdatePetInfoInHtml();

    // When each button is clicked, it will "call" function for that button (functions are below)
    $('.treat-button').click(clickedTreatButton);
    $('.play-button').click(clickedPlayButton);
    $('.exercise-button').click(clickedExerciseButton);
    $('.talk-button').click(clickedTalkButton);

})

function clickedTalkButton() {
    // Increase pet happiness
    pet_info.happiness ++;

    pet_info.reply = "Hey!".concat(" ").concat("My happiness is ").concat(pet_info.happiness);

    checkAndUpdatePetInfoInHtml();
}


function clickedTreatButton() {
    // Increase pet happiness
    pet_info.happiness += pet_info.happiness;

    // Increase pet weight
    pet_info.weight += 3;

    checkAndUpdatePetInfoInHtml();
}

function clickedPlayButton() {
    // Increase pet happiness
    pet_info.happiness += 4;

    // Decrease pet weight
    if (pet_info.weight > 1) {
        pet_info.weight --;
    }

    checkAndUpdatePetInfoInHtml();
}

function clickedExerciseButton() {
    // Decrease pet happiness
    pet_info.happiness ++;

    // Decrease pet weight
    if (pet_info.weight > 1) {
        pet_info.weight --;
    }

    checkAndUpdatePetInfoInHtml();
}

function checkAndUpdatePetInfoInHtml() {
    checkWeightAndHappinessBeforeUpdating();
    updatePetInfoInHtml();
}

function checkWeightAndHappinessBeforeUpdating() {
    // Add conditional so if weight is lower than zero, set it back to zero
}

// Updates your HTML with the current values in your pet_info dictionary
function updatePetInfoInHtml() {
    $('.name').text(pet_info['name']);
    $('.weight').text(pet_info['weight']);
    $('.happiness').text(pet_info['happiness']);
    $('.reply').text(pet_info['reply']);
}
