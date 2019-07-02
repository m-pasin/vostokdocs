var LANG_CHOICES = {
    ru: "ru",
    en: "en",
};

var DEFAULT_LANG = LANG_CHOICES.ru;

var currentLang = DEFAULT_LANG;

var translation = {
    ru: null,
    en: null,
};

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

function init() {
    var langSwitcher = qs('#lang-switcher');
    langSwitcher.innerHTML = DEFAULT_LANG;
    langSwitcher.onclick = function (event) {
        console.log(translation);
        if (currentLang === LANG_CHOICES.ru) {
            currentLang = LANG_CHOICES.en;
        } else if (currentLang === LANG_CHOICES.en) {
            currentLang = LANG_CHOICES.ru;
        }
        event.target.innerHTML = currentLang;
    };

    request({
        url: "/_static/locales/" + currentLang + ".json",
        callback: function (response) {
            translation[currentLang] = response;
            insertTranslation(response);
        }
    });
}

function main() {
    document.addEventListener("DOMContentLoaded", init);
}

main();
