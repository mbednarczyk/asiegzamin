for i in 0..25
  Gist.create(
      snippet: 'html, body {
		margin: 0;
		padding: 0;
		width: 100%;
		height: 100%;
	}
	h1 {
		font-size: 36px;
		font-family: sans-serif;
		font-weight: 400;
		line-height: 150%;
		margin-top: 20px;
	}',
      lang: "css",
      description: "test",
      autor: "testowy"
  )
end

