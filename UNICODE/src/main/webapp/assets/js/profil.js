document.addEventListener("DOMContentLoaded", function() {
    const addButton = {
        "ca": document.getElementById("ca_addButton"),
        "ce": document.getElementById("ce_addButton"),
        "pr": document.getElementById("pr_addButton")
    };

    const deleteButton = {
        "ca": document.getElementById("ca_deleteButton"),
        "ce": document.getElementById("ce_deleteButton"),
        "pr": document.getElementById("pr_deleteButton")
    };

    const textList = {
        "ca": document.getElementById("careerList"),
        "ce": document.getElementById("certificateList"),
        "pr": document.getElementById("primeList")
    };

    Object.keys(addButton).forEach(function(key) {
        addButton[key].addEventListener("click", function() {
            const newTextItem = document.createElement("input");
            newTextItem.type = "text";
            newTextItem.className = "textItem";
            textList[key].appendChild(newTextItem);
        });

        deleteButton[key].addEventListener("click", function() {
            const textItems = textList[key].querySelectorAll(".textItem");
            if (textItems.length > 0) {
                const lastItemIndex = textItems.length - 1;
                textList[key].removeChild(textItems[lastItemIndex]);
            }
        });
    });
});