function qs(selector) {
    return document.querySelector(selector);
}

function request(data) {
    var requestRu = new XMLHttpRequest();
    requestRu.onload = function () {
        var response = JSON.parse(this.responseText);
        data.callback(response);
    };
    requestRu.open("get", data.url, true);
    requestRu.send();
}

function insertTranslation(response) {
    var header = qs(".header__text.header__item");
    header.innerHTML = response.header;

    var headerButton = qs(".button__text");
    headerButton.innerHTML = response.header_button;
}

function requestTranslation() {
    request({
        url: "/_static/locales/ru.json",
        callback: insertTranslation
    });
/*
    request({
        url: "/_static/locales/en.json",
        callback: insertTranslation
    });
*/
}

function main() {
    document.addEventListener("DOMContentLoaded", requestTranslation);
}

main();
