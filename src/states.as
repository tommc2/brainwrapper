
import mx.rpc.events.ResultEvent;

private const SCHEMES:Array = [['splash', 'signup', 'game', 'res', 'detres'], // order = 0
							['splash', 'game', 'res', 'signup', 'detres'], //order = 1
							['splash', 'game', 'res', 'detres']]; //order = 2

private var _scheme:Array;

private function advance(whence:String):void{
	trace('advancing from: '+whence);
	try{this[_scheme.shift()]()}catch(err){
		trace('ignoring bad state request');
	}
}

public function splash():void{
	trace('doing splash');
	centerbox.selectedChild = exbako;
	exloader.content.loaderInfo.sharedEvents.dispatchEvent(
					new ResultEvent('containerevent', false, true, {command:"doSplash"}));
}

public function signup():void{
	trace('doing signup');
	if(_cookiepresent)advance('signup screen had cookie');
	else centerbox.selectedChild = leadview;
}

public function game():void{
	trace('doing game');
	centerbox.selectedChild = exbako;
	listenforgame();
	exloader.content.loaderInfo.sharedEvents.dispatchEvent(
					new ResultEvent('containerevent', false, true, {command:"doGame"}));
}

public function res():void{
	trace('doing res')
	centerbox.selectedChild = teaserview;
	teaserview.title.text = _gametitle.replace('%20', ' ');
}

public function detres():void{
	trace('doing detres');
	centerbox.selectedChild = exbako;
	exloader.content.loaderInfo.sharedEvents.dispatchEvent(
					new ResultEvent('containerevent', false, true, {command:"doResults"}));
}

public function manualsignup():void{
	_cookiepresent = false;
	signup();
}

			