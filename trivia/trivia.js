document.addEventListener('DOMContentLoaded',function() {
    // If the correct answer is selected
    let answer = document.querySelector('#correct');
    correct.addEventListener('click',function() {
        correct.style.backgroundColor = '#AFE1AF';
        document.querySelector('#response').innerHTML = 'Correct! 🥳';
    });
    // If the wrong answer is selected
    let wrong = document.querySelectorAll('.incorrect');
    for (let i = 0; i < wrong.length; i++) {
        wrong[i].addEventListener('click',function() {
            wrong[i].style.backgroundColor = '#D98880';
            document.querySelector('#response').innerHTML = 'Incorrect! 🚫';
        });
    }

    // Response based on input from user
    document.querySelector('#submit').addEventListener('click',function() {
        let input = document.querySelector('#q2');
        if (input.value === 'France') {
            input.style.backgroundColor = '#AFE1AF';
            document.querySelector('#response2').innerHTML = 'Correct! 🥳';
        } else {
            input.style.backgroundColor = '#D98880';
            document.querySelector('#response2').innerHTML = 'Incorrect! 🚫';
        }
    });

});