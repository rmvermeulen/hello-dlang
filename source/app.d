import std.stdio;
import std.format : format;

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


	auto g = new Greeter();
	writeln(format!"Created a greeter! %s"(g));

	const int n = g.getN();
	writeln(format!"Got a number: %s"(n));

	auto m = g.getMessage();
	writeln(m);

	writeln("That was the greeting!");
}
