var allow = 1; 

function FlashTag(src, width, height) { 
// Required this.src = 'http://data.websitepuzzles.com/swf/'+src+'/'+src+'.swf?pid=&rand='; 
this.width = width; 
this.height = height; 
this.version = '9,0,16,0'; 
this.id = null; 
this.flashVars = null; 
this.flashVarsStr = null; 
this.genericParam = new Object(); 
this.setAllowScriptAccess("always"); 
this.ie = (navigator.appName.indexOf ("Microsoft") != -1) ? 1 : 0; } 

FlashTag.prototype.setSource = function(src) { 
	this.src = '+src+'.swf; 
} 
FlashTag.prototype.setWidth = function(w) { this.width = width; } 
FlashTag.prototype.setHeight = function(h) { this.h = height; } 
FlashTag.prototype.setVersion = function(v) { this.version = '9,0,16,0'; } 
FlashTag.prototype.setId = function(id) { this.id = id; } 
FlashTag.prototype.setBgcolor = function(bgc) { if (bgc.charAt(0) != '#') { bgc = '#' + bgc; } this.genericParam['bgcolor'] = bgc; } 
FlashTag.prototype.addFlashVars = function(fvs) { this.flashVarsStr = fvs; } 
FlashTag.prototype.addFlashVar = function(n, v) { if (this.flashVars == null) { this.flashVars = new Object(); } this.flashVars[n] = v; } 
FlashTag.prototype.removeFlashVar = function(n) { if (this.flashVars != null) { this.flashVars[n] = null; } } 
FlashTag.prototype.setSwliveconnect = function(swlc) { this.genericParam['swliveconnect'] = swlc; } 
FlashTag.prototype.setPlay = function(p) { this.genericParam['play'] = p; } 
FlashTag.prototype.setLoop = function(l) { this.genericParam['loop'] = l; } 
FlashTag.prototype.setMenu = function(m) { this.genericParam['menu'] = m; }
FlashTag.prototype.setQuality = function(q) { this.genericParam['quality'] = q; } 
FlashTag.prototype.setScale = function(sc) { this.genericParam['scale'] = sc; } 
FlashTag.prototype.setAlign= function(a) { this.genericParam['align'] = a; } 
FlashTag.prototype.setSalign= function(sa) { this.genericParam['salign'] = sa; } 
FlashTag.prototype.setWmode = function(wm) { this.genericParam['wmode'] = wm; } 
FlashTag.prototype.setBase = function(base) { this.genericParam['base'] = base; } 
FlashTag.prototype.setAllowScriptAccess = function(sa) { this.genericParam['allowScriptAccess'] = sa; } 
FlashTag.prototype.toString = function() { 
	var flashTag = new String(); 
	if (this.ie) { flashTag += ''; } else { flashTag += '0) { flashTag += ' flashvars="'+fv+'"'; } } 
	flashTag += ' pluginspage="http://www.macromedia.com/go/getflashplayer">'; flashTag += ''; } 
	return flashTag; 
} 

FlashTag.prototype.write = function(doc) { Couldn't connect to http://www.websitepuzzles.com/admin/script/get_url.php?psid=&referer=http%3A%2F%2Fdata.websitepuzzles.com%2FPuzzleCodeJs.php%2F.