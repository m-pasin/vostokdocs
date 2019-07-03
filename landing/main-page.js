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

function switchLang(event) {
    if (currentLang === LANG_CHOICES.ru) {
        currentLang = LANG_CHOICES.en;
        if (translation.en !== null) {
            insertTranslation(translation.en)
        }
    } else if (currentLang === LANG_CHOICES.en) {
        currentLang = LANG_CHOICES.ru;
        if (translation.ru !== null) {
            insertTranslation(translation.ru)
        }
    }
    event.target.innerHTML = currentLang;
}

function init() {
    var langSwitcher = qs('#lang-switcher');
    langSwitcher.innerHTML = DEFAULT_LANG;
    langSwitcher.onclick = switchLang;

    request({
        url: "/_static/locales/" + LANG_CHOICES.ru + ".json",
        callback: function (response) {
            translation.ru = response;
            if (DEFAULT_LANG === LANG_CHOICES.ru) {
                insertTranslation(response);
            }
        }
    });
    request({
        url: "/_static/locales/" + LANG_CHOICES.en + ".json",
        callback: function (response) {
            translation.en = response;
            if (DEFAULT_LANG === LANG_CHOICES.en) {
                insertTranslation(response)
            }
        }
    });
}

function main() {
    document.addEventListener("DOMContentLoaded", init);
}

main();
