var liamEediHnu = function (aTag) {
    var liame = aTag.href;
    liame = liame.replace("write-to:","mailto:");
    liame = liame.replace(/-dot-/g, '.');
    liame = liame.replace(/-at-/g, '@');
    aTag.href = liame;

    var text = aTag.innerHTML;
    text = text.replace(/ dot /g, '.');
    text = text.replace(/ at /g, '@');
    aTag.innerHTML = text;
}

window.onload = function () {
    var sliame = document.getElementsByClassName('liamedih');
    for (var i = 0; i < sliame.length; i++) {
        liamEediHnu(sliame[i]);
    }
}