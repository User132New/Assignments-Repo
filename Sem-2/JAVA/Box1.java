
public class Box1 {
	double len, wid, hei;
	public Box1(){
		len=wid=hei=5;
}
	public Box1(double len,double wid,double hei){
		this.len = len;
		this.wid = wid;
		this.hei = hei;
	}
	
	public Box1(double x, double y) {
		this.len = x;
		this.wid = y;
		this.hei = 30; // Set hei first
	     // Then call the three-parameter constructor
	}

	public double getVol(){
		return (len*wid*hei);
	}

}
