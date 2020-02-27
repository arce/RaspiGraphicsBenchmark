function setup() {
	
	var data = "";
	
	data = data.concat(localStorage.getItem("GraphicsBenchArc-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchArc-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchArc-"+500000));
	
	data = data.concat(localStorage.getItem("GraphicsBenchFillArc-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchFillArc-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchFillArc-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillArc-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchFillArc-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillArc-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillArc-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillArc-"+500000));
	
	data = data.concat(localStorage.getItem("GraphicsBenchFillOval-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchFillOval-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchFillOval-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillOval-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchFillOval-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillOval-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillOval-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillOval-"+500000));

	data = data.concat(localStorage.getItem("GraphicsBenchFillRect-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchFillRect-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchFillRect-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillRect-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchFillRect-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillRect-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillRect-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillRect-"+500000));
			
 	data = data.concat(localStorage.getItem("GraphicsBenchFillShape-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchFillShape-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchFillShape-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillShape-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchFillShape-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillShape-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillShape-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchFillShape-"+500000));
	
	data = data.concat(localStorage.getItem("GraphicsBenchLine-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchLine-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchLine-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchLine-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchLine-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchLine-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchLine-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchLine-"+500000));

	data = data.concat(localStorage.getItem("GraphicsBenchOval-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchOval-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchOval-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchOval-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchOval-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchOval-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchOval-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchOval-"+500000));

	data = data.concat(localStorage.getItem("GraphicsBenchRect-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchRect-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchRect-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchRect-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchRect-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchRect-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchRect-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchRect-"+500000));
		
	data = data.concat(localStorage.getItem("GraphicsBenchShape-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchShape-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchShape-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchShape-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchShape-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchShape-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchShape-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchShape-"+500000));
	
	data = data.concat(localStorage.getItem("GraphicsBenchText-"+100));
	data = data.concat(localStorage.getItem("GraphicsBenchText-"+500));
	data = data.concat(localStorage.getItem("GraphicsBenchText-"+1000));
	data = data.concat(localStorage.getItem("GraphicsBenchText-"+5000));
    data = data.concat(localStorage.getItem("GraphicsBenchText-"+10000));
	data = data.concat(localStorage.getItem("GraphicsBenchText-"+50000));
	data = data.concat(localStorage.getItem("GraphicsBenchText-"+100000));
	data = data.concat(localStorage.getItem("GraphicsBenchText-"+500000));
	
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
