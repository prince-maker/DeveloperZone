package net.codejava;

public class Utils {
	public static String generateId()

	{

		String randomString = "1234567890";
		StringBuilder sb = new StringBuilder(3);
		sb.append("Developer");
		for (int i = 0; i <= 3; i++) {
			int index = (int) ((int) randomString.length() * Math.random());
			sb.append(randomString.charAt(index));

		}

		return sb.toString();

	}
}
