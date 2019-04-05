function createEventHandler() {
    // declare varliable 
    let menuElement = document.querySelector("#menuID");
    // call inner function
    handler(event);
    // inner function declaration
    function handler(event) {
        // declare titleElement
        let titleElement = menuElement.querySelector(".droptbtn");
        
        // set slates
        if(menuElement.className == "menuClass") {
            menuElement.className = "menuClassOpen";
        }
        else {
            menuElement.className = "menuClass";
        }
        
    }
    return handler;
}

function toggleRows() {
    // declare variables
    let table = document.querySelector( ".dextable" );
    let l = table.rows.length;
    
    // set slates
    for ( var i = 1; i < l; i++ ) {
        let newName=i;
        table.rows[i].id = newName;
        
        // if not first 5 rows and row is open close
        if ((Number(table.rows[i].id)>5) && (table.rows[i].className == "openRow")) {
            table.rows[i].className = "closedRow";
        }
        else { // if closed do this
            table.rows[i].className = "openRow";
        }
    }
    
    // 7 was just a rand num greater than 5 but this if statment changes text depending on whether 7 is open or not
    if (table.rows[7].className == "openRow") {
        document.getElementById("dropbtn2").innerText = 'Show Less';
    }
    else {
        document.getElementById("dropbtn2").innerText = 'Show More';
    }
}
