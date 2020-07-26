import vibe.vibe;

void index(HTTPServerRequest req, HTTPServerResponse res)
{
	res.render!("index.dt", req);
}

version (unittest)
{
	// Do nothing here, dub takes care of that
}
else
{
	// run the app
	void main()
	{
		auto router = new URLRouter;
		router.get("/", &index);

		auto settings = new HTTPServerSettings;
		settings.port = 8080;

		listenHTTP(settings, router);

		runApplication();
	}
}
