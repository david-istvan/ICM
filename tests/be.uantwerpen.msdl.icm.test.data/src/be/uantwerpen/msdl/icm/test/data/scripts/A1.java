package be.uantwerpen.msdl.icm.test.data.scripts;

public class A1 implements Runnable{

	@Override
	public void run() {
		System.out.println(this.getClass().getSimpleName());
	}
}
