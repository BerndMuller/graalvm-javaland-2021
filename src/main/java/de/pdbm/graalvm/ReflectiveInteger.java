package de.pdbm.graalvm;

import java.lang.reflect.Constructor;

public class ReflectiveInteger {

	public static void main(String[] args) throws Exception {
		createInteger();
		//createInteger2();
		//createInteger("java.lang.Integer");
	}

	private static void createInteger() throws Exception {
		Class<?> clazz = Class.forName("java.lang.Integer");
		Constructor<?> constructor = clazz.getConstructor(new Class[] { String.class });
		Object instance = constructor.newInstance(new Object[] { "42" });
		System.out.println("Mit Reflection erzeugt: " + instance);
	}

	private static void createInteger2() throws Exception {
		String javaLangInteger = "java.lang.Integer";
		Class<?> clazz = Class.forName(javaLangInteger);
		Constructor<?> constructor = clazz.getConstructor(new Class[] { String.class });
		Object instance = constructor.newInstance(new Object[] { "42" });
		System.out.println("Mit Reflection erzeugt: " + instance);
	}

	/*
	 * geht mit Fallback, sonst 
	 * Exception in thread "main" java.lang.ClassNotFoundException: java.lang.Integer
	 */
	private static void createInteger(String javaLangInteger) throws Exception {
		Class<?> clazz = Class.forName(javaLangInteger);
		Constructor<?> constructor = clazz.getConstructor(new Class[] { String.class });
		Object instance = constructor.newInstance(new Object[] { "42" });
		System.out.println("Mit Reflection erzeugt: " + instance);
	}
	
}
