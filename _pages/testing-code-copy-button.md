---
permalink: /testing/code-copy-button/
title: "Testing Code Copy Button"
date: 2024-12-17T17:41:59-6:00
last_modified_at: 
toc: true
excerpt:
# header: 
#  image: /assets/images/pocket-notebooks.jpg
#  image_description: "ryan's pocket notebooks"
---

## Testing the Code Copy Button  

I'm trying to figure out why the Minimal Mistakes code copy button isn't working on this site.  

The below code all comes from the [Pygments CSS Themes site](https://jwarby.github.io/jekyll-pygments-themes/languages/javascript.html).  

Seems like the simpler version will work, but not the liquid tag version. And for Dataview, I need the longer version.  

## Simple Code Block (Backticks)

This seems to work just fine, thankfully! It's a very useful addition to the Minimal Mistakes theme!  

```javascript
/**
 * Does a thing
 */
function helloWorld(param1, param2) {
  var something = 0;

  // Do something
  if (2.0 % 2 == something) {
    console.log('Hello, world!');
  } else {
    return null;
  }

  // @TODO comment
}
```

## Jekyll Code Block (Liquid Tag)

This doesn't seem to work, whether or not I have line numbers.  

### No Line Numbers

{% highlight javascript %}

/**
 * Does a thing
 */
function helloWorld(param1, param2) {
  var something = 0;

  // Do something
  if (2.0 % 2 == something) {
    console.log('Hello, world!');
  } else {
    return null;
  }

  // @TODO comment
}

{% endhighlight %}

### With Line Numbers

{% highlight javascript linenos %}

/**
 * Does a thing
 */
function helloWorld(param1, param2) {
  var something = 0;

  // Do something
  if (2.0 % 2 == something) {
    console.log('Hello, world!');
  } else {
    return null;
  }

  // @TODO comment
}

{% endhighlight %}