package test;

import org.junit.Test;

import pi.JOCLPi;
/**
 * This class aims to test dummyThrowDarts function in JoCLPi java
 */
public class JOCLPiTest {

	@Test
	public void test1() {
		int[] results = new int[6];
		JOCLPi.dummyThrowDarts(new int[] { 0, 1, 2, 3, 4, 5 }, 1000, results, 0);
		// check that results[0] is around 750 and results[1..5] are 0.
	}

	@Test
	public void test2() {
		int[] results = new int[6];
		JOCLPi.dummyThrowDarts(new int[] { 0, 1, 2, 3, 4, 5 }, 1000, results, 5);
		// check that results[5] is around 750 and results[0..4] are 0.

	}
}
