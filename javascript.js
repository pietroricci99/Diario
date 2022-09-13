/*funzione per svuotare html */
function clean(){
    let sezioni = document.getElementsByClassName("sezione");
    for (let s in sezioni) {
        sezioni[s].innerHTML="";
    }
}

/*funzione che genera il testo */
function displayTesto(){
    clean();
    document.getElementById("biografia").style.display = "none";
    SaxonJS.transform({
        stylesheetLocation: "testo.sef.json",
        sourceLocation: "diario1.xml"
    }, "async");  
}

function displayBiografia() {
    clean(); 
    document.getElementById("biografia").style.display = "block";
}

/*funzione che genera la home*/
function displayHome(){
    clean();
    SaxonJS.transform({
        stylesheetLocation: "home.sef.json",
        sourceLocation: "diario1.xml"
    }, "async");  
}

/*funzione che genera about*/
function displayAbout(){
    clean();
    document.getElementById("biografia").style.display = "none";
    SaxonJS.transform({
        stylesheetLocation: "about.sef.json",
        sourceLocation: "diario1.xml"
    }, "async");  
}


