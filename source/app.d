import std.stdio;
// import vibe.vibe;

class Greeter {
	auto getMessage() {
		return "This is the message!";
	}
}


void main()
{
	Greeter g;
	auto m = g.getMessage();
	writeln(m);
}
