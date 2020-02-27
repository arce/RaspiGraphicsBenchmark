function setup() {
	
	var data = "";
	
	data = data.concat(localStorage.getItem("GraphicsBenchArc-100"));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-500"));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-1000"));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-5000"));
    data = data.concat(localStorage.getItem("GraphicsBenchArc-10000"));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-50000"));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-100000"));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-500000"));
	
	var filename = 'console.json'
    var blob = new Blob([data], {type: 'text/json'}),
    e    = document.createEvent('MouseEvents'),
    a    = document.createElement('a')    
    a.download = filename
    a.href = window.URL.createObjectURL(blob)
    a.dataset.downloadurl =  ['text/json', a.download, a.href].join(':')
    e.initMouseEvent('click', true, false, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null)
    a.dispatchEvent(e)
}

function draw() {
}
