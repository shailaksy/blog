class Home {
    constructor() {
        this.date = new Date().toLocaleString("en-US", { dateStyle: "full" });
        console.log(this.date);
        this.dateElement = document.querySelector('#date')
        this.dateElement.innerHTML = this.date
    }
}

// class Preloader {

// }

export default Home