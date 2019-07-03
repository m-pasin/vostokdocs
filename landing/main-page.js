var LANG_CHOICES = {
    ru: "ru",
    en: "en",
};

var LANG_CHOICE_ACTIVE_CLASS = "lang-switcher__lang-choice--active";

var DEFAULT_LANG = LANG_CHOICES.ru;

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

function insertTranslation(translation) {
    var header = qs(".header__text.header__item");
    header.innerHTML = translation.header;

    var headerButton = qs(".button__text");
    headerButton.innerHTML = translation.header_button;

    for (var i = 1; i <= 5; i++) {
        var contentItem = qs('.content .content__item:nth-child(' + i + ')');
        var title = contentItem.getElementsByClassName('description__title')[0];
        title.innerHTML = translation.content[i].title;
        var text = contentItem.getElementsByClassName('description__text')[0];
        text.innerHTML = translation.content[i].text;
    }
}

function switchLang(event) {
    var langChoices = document.querySelectorAll(".lang-switcher__lang-choice");
    for (var i = 0; i < langChoices.length; i++) {
        langChoices[i].classList.remove(LANG_CHOICE_ACTIVE_CLASS);
    }
    event.target.classList.add(LANG_CHOICE_ACTIVE_CLASS);
    var currentLang = event.target.getAttribute('data-lang');
    if (currentLang === LANG_CHOICES.ru && translation.ru !== null) {
        insertTranslation(translation.ru)
    } else if (currentLang === LANG_CHOICES.en && translation.en !== null) {
        insertTranslation(translation.en)
    }
}

function init() {
    var langChoices = document.querySelectorAll(".lang-switcher__lang-choice");
    for (var i = 0; i < langChoices.length; i++) {
        langChoices[i].onclick = switchLang;
    }

    var langChoice = qs('#lang-choice-' + DEFAULT_LANG);
    langChoice.classList.add(LANG_CHOICE_ACTIVE_CLASS);

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
