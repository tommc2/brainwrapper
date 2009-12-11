package fonts{
	public class utils{
		public static function fixhtmltxt(raw:String, fsize:int = 16):String{
			var proctxt:String = raw;
			proctxt = proctxt.replace('</h1>', '</font>');
			proctxt = proctxt.replace('<h1>', '<font face = "_avenirheavy" size = "16">');
			proctxt = "<textformat indent='0' blockindent = '0'><font size = '" + fsize + "'>"+
						proctxt+
						'</font></textformat>';
			return(proctxt);
		}
	}
}