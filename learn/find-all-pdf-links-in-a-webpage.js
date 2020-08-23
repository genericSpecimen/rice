links = document.getElementsByTagName('a');
// ending with .pdf (case insensitive)
let patt = /.*pdf/i;
for (let i=0; i<links.length; i++) {
	if (links[i].href.match(patt) !== null) {
		console.log(links[i].href.match(patt)[0]);
	}
}
