/* this file contains one event listener for enter_new_record.php.
    the JavaScript here acts as a bridge between the HTML form
    in enter_new_record.php and the PHP script in enter.php -
    which writes the new record into the database.
*/

// this is the form in enter_new_record.php -
const snubform = document.querySelector('#snubform');

// this is a DIV in enter_new_record.php -
const response_content = document.querySelector('#response');

// this DIV contains the form in enter_new_record.php -
const snubs_form = document.querySelector('#snubs');
// show the DIV if it is hidden
snubs_form.style.display = 'block';


// event handler
snubform.onsubmit = (e) => {
    // gets the names and current values from the form
    const formData = new FormData(snubform);
    // FETCH
    fetch('enter.php', {
        method: "POST",
        body: formData,
        credentials: "same-origin"
    })
    .then( (response) => {
        if (!response.ok) {
            throw new Error("Network response was not ok");
        }
        return response.text();
    })
    .then( (data) => {
        snubs_form.style.display = 'none';
        response_content.innerHTML =
        "<div class='text-center'><p class='announce'>" + data + "</p>" +
        "<a class='btn btn-success' href='enter_new_record.php' role='button'>New Entry</a></div>";
    })
    .catch( (error) => {
        console.error('Error in fetch: ', error);
    }); // end of FETCH
    return false;
}; // end sockform.onsubmit