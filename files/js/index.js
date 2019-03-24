window.onload = function () {
    console.log('Page loaded');
    
    setInterval(function () {
        let now = new Date();
        let YMD = now.toLocaleDateString('hu-HU');
        let his = now.toLocaleTimeString('hu-HU');
        
        document.getElementById('counter').innerHTML = YMD + ' ' + his;
    }, 1000)
};
