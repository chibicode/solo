---
layout: default
---

[Solo](http://chibicode.github.io/solo) is a Jekyll theme that supports **single-page websites** only, but supports them well. Yes, it's responsive.

<iframe src="https://ghbtns.com/github-btn.html?user=chibicode&amp;repo=solo&amp;type=watch&amp;count=true&amp;size=large"
  allowtransparency="true" frameborder="0" scrolling="0" width="170" height="30"></iframe><br/>

Looking for a more standard Jekyll theme? Try out [Shiori](http://github.com/ellekasai/shiori) theme, which has Bootstrap integration.

## Solo is useful if...

* You want to create an "about me" page from a single markdown file and host it under a custom domain name.
* You want to create a single-page website that's mostly text, like [Know Your Company](https://knowyourcompany.com/).
* You want to share a single markdown file and tried GitHub Gist ([example](https://gist.github.com/dypsilon/5819504)), but would like something nicer-looking.
* You want something like GitHub's [automatic page generator](http://pages.github.com/) for a non-code repository.

This page itself is built with Solo. It's generated from [this markdown file](https://github.com/chibicode/solo/blob/gh-pages/_includes/index.md).

## Usage

First, [install Jekyll](http://jekyllrb.com/docs/installation/). Then download Solo from its [GitHub Repository](https://github.com/chibicode/solo). Start Jekyll and you should see this page up and running.

**The main file you'll be editing is `index.md`**. This becomes the content for the page.

### Other Files

* Edit `_config.yml` to change the site's title and description.
* Edit `_includes/head.html` to add custom code to `<head>`.
* Edit `_includes/scripts.html` to add custom code before `</body>`.
* Edit `CNAME` to host on a custom domain.
* Edit `README.md` before pushing your code.

### Don't use `<h1>` tags

Wthin `index.md`, do not use `<h1>` tags - `<h1>` is reserved for the site title.

### Supported Tags

Solo supports lists, `<hr>`s, `<table>`s,

> blockquotes, and...

~~~html
<pre>code blocks with syntax highlighting.</pre>
~~~

### Keep Solo up to date

Instead of downloading, you can [fork Solo](https://github.com/chibicode/solo/fork) and use the "upstream" strategy described on [this page](https://help.github.com/articles/fork-a-repo) to keep Solo up to date.

## Author

Shu Uesugi ([Twitter](http://twitter.com/chibicode)/[GitHub](http://github.com/chibicode)/[G+](https://plus.google.com/110325199858284431541?rel=author)).

![Shu Uesugi](https://www.gravatar.com/avatar/b868d84bbe2ed30ec45c9253e1c1cefe.jpg?s=200)

### License

[MIT License](http://chibicode.mit-license.org/)

<a href="https://github.com/chibicode/solo" class="github-corner"><svg width="80" height="80" viewBox="0 0 250 250" style="fill:#151513; color:#fff; position: absolute; top: 0; border: 0; right: 0;"><path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path><path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path><path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path></svg></a><style>.github-corner:hover .octo-arm{animation:octocat-wave 560ms ease-in-out}@keyframes octocat-wave{0%,100%{transform:rotate(0)}20%,60%{transform:rotate(-25deg)}40%,80%{transform:rotate(10deg)}}@media (max-width:500px){.github-corner:hover .octo-arm{animation:none}.github-corner .octo-arm{animation:octocat-wave 560ms ease-in-out}}</style>
