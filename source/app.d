import std.stdio;
import std.format : format;

/// A statically sized vec<T>
template Vector(T, int N)
{
}

template Vector(T, int N : 1)
{
	private T[N] values;
	T x()
	{
		return values[0];
	}
}

template Vector(T, int N : 2)
{
	private T[N] values;
	T x()
	{
		return values[0];
	}

	T y()
	{
		return values[1];
	}
}

template Vector(T, int N : 3)
{
	private T[N] values;
	T x()
	{
		return values[0];
	}

	T y()
	{
		return values[1];
	}

	T z()
	{
		return values[2];
	}
}

/// A Greeter class
class Greeter
{
	public int getN()
	{
		return 5;
	}

	string getMessage()
	{
		return "This is the message!";
	}
}

void main()
{
	auto v1 = new Vector!(int, 1);
	writeln(v1.x());

	auto v2 = new Vector!(int, 2);
	writeln(v2.x());
	writeln(v2.y());

	auto v3 = new Vector!(int, 3);
	writeln(v3.x());
	writeln(v3.y());
	writeln(v3.z());

	writeln(format!"Created a Vector! %s"(*vec));

	auto g = new Greeter();
	writeln(format!"Created a greeter! %s"(g));

	const int n = g.getN();
	writeln(format!"Got a number: %s"(n));

	auto m = g.getMessage();
	writeln(m);

	writeln("That was the greeting!");
}
