package smartDevices;

import java.io.IOException;
import java.util.TimerTask;

import smartDevices.SerialConnection;

public class TimedTask extends TimerTask {

	@Override
	public void run() {
		try {
			SerialConnection.lightOn(5);
			System.out.println("lighting timed light on");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
