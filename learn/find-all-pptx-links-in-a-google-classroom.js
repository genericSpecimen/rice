links = document.getElementsByTagName('a');

pptx_dict = {};
links_str = '';

for(let i=0; i<links.length; i++) {
    let aria_label = links[i].getAttribute("aria-label");
    if (aria_label !== null && aria_label.match(/.*pptx/i) !== null) {
        console.log(aria_label + ": " + links[i].href);
        pptx_dict[links[i].href] = aria_label;
        links_str += links[i].href;
        links_str += '\n';
    }
}

/*
 * save links_str to a file, say ppts.txt
 * cut -d '/' ppts.txt -f 6 > ppt_ids.txt
 * cat ppt_ids.txt | xargs -L1 ./gdrive download
 * https://github.com/prasmussen/gdrive
 */
