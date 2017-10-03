
document.addEventListener('DOMContentLoaded', function() {
    chrome.tabs.getSelected(null, function(tab) {
		document.getElementById('url').innerHTML = tab.url;
		d = document;
		var f = d.createElement('form');
		f.action = 'https://study-buddy-mirandasaari.c9users.io/lhdcsumb/project/lhd/php/insertLink.php';
		f.method = 'POST';
		var i = d.createElement('input');
		i.type = 'hidden';
		i.name = 'urle';
		i.value = tab.url;
		f.appendChild(i);
		d.body.appendChild(f);
		f.submit();
		
		
	});
});