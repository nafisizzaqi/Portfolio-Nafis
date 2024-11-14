function toggleNavbar() {
    const navbar = document.getElementById('navbar-sticky');
    navbar.classList.toggle('hidden');
}

var typingEffect = new Typed("#typing", {
    strings: ["Nafis Izzaqi"],
    loop: true,
    typeSpeed: 100,
    backSpeed: 80,
    startDelay: 1000,
    backDelay: 1500
});

document.getElementById('Hire-me').addEventListener('click', function() {
    document.getElementById('footer').scrollIntoView({
        behavior: 'smooth'
    });
});
