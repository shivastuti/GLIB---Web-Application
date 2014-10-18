h = 0;
function allowDrop(ev) {
    ev.preventDefault();
}
function drag(ev) {
    ev.dataTransfer.setData("Text", ev.target.id);
    ev.dataTrasnfer.effectAllowed = 'copy';

}

function drop(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("Text");
    ev.dataTransfer.dropEffect = 'copy';
    ev.target.appendChild(document.getElementById(data).cloneNode(true));

}
function drop1(ev) {
    ev.preventDefault();
    var data = ev.dataTransfer.getData("Text");
    ev.dataTransfer.dropEffect = 'move';
    ev.target.appendChild(document.getElementById(data));

}
function answers() {
    document.getElementById('ans').style.color = '#000000';
}
