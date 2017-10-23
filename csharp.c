using System;
using System.Collections.Generic;
					
public class Program
{	
	public static Func<int, int> Add(int x){
		return (y) => x + y;	
	}

	public static void Each(List<int> list, Action<int> callback){
		foreach(var item in list){
			callback(item);
		}
	}
	
	public static void Main()
	{
		Console.WriteLine(Add(7)(2));
		Each(new List<int>{1,2,3,4,5}, (x) => Console.WriteLine(x));
	}
}
