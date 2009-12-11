
import mx.rpc.events.ResultEvent;

private const SCHEMES:Array = [['splash', 'signup', 'game', 'res'], // order = 0
							['splash', 'game', 'signup', 'res'], //order = 1
							['splash', 'signup', 'res_with_signup']]; //order = 2

private var _scheme:Array = SCHEMES[int(getParam('order')) || 0];

private function advance(whence:String):void{
	trace('advancing: '+whence);
	try{this[_scheme.shift()]()}catch(err){
		trace('ignoring bad state request');
	}
}						

public function splash():void{
	trace('doing splash');
	//_swfname = getParam('f') || 'sixtysecadapter';
	centerbox.selectedChild = exbako;
	exloader.content.loaderInfo.sharedEvents.dispatchEvent(
					new ResultEvent('containerevent', false, true, {command:"doSplash"}));
}

public function signup():void{
	trace('doing signup');
	centerbox.selectedChild = leadview;
}

public function game():void{
	trace('doing game');
	centerbox.selectedChild = exbako;
	listenforgame();
	exloader.content.loaderInfo.sharedEvents.dispatchEvent(
					new ResultEvent('containerevent', false, true, {command:"doGame"}));
}

public function res():void{
	trace('doing res');
	centerbox.selectedChild = exbako;
	exloader.content.loaderInfo.sharedEvents.dispatchEvent(
					new ResultEvent('containerevent', false, true, {command:"doResults"}));
}

public function res_with_signup():void{
	trace('doing res_with_signup');
}
			