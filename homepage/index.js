document.addEventListener('DOMContentLoaded', function () {

    const photo = ["images/photo1.jpg", "images/photo2.jpg", "images/photo3.jpg", "images/photo4.jpg", "images/photo5.jpg", "images/photo6.jpg"];
    let generator = document.querySelector('#random');
    let screen = document.querySelector('#screen');

    generator.addEventListener('click', () =>
        random());


    function random() {
        let number = Math.floor(Math.random() * photo.length);
        screen.setAttribute("src", photo[number]);
    }


});