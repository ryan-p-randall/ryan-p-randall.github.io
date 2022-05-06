---
title: "Math Accessibility"
date: 2022-05-04  
last_modified_at: 2022-05-04  
excerpt: "Notes on making equations and other math notation accessible online."
status: ":seedling:"  
published: true
accessibility: true
---

<span class="audience">Assumed audience</span> People relatively—or almost entirely—new to web publishing
{: .notice }

I've lately done some work to improve the accessibility of math notation (equations, symbols, etc.) for users of screen readers online, particularly for the creation of open educational resources (<abbr>OER</abbr>). It's been an unexpectedly engrossing investigation, so I figured I'd share what I've learned so far—in particular, the workflow I'd recommend for others.  

## Our Problem: Math Online Ain't Easy  

In the recent past, at least at the places I know best, math educators have heavily relied on images or handouts instead of considering "online first" or [born accessible](http://diagramcenter.org/born-accessible-publishing.html) publishing and formatting. I'm not sure how faculty and staff handled the creation of accessible equivalents, although I imagine they mostly relied on the expertise of Disability Services to make things accessible for the students who had accommodations. That's an understandable approach, coming from a perspective where typesetting and other formatting intricacies are handled by a publisher or dedicated student support staff.  

My perspective is slightly different. My critical media studies background tells me that [formats imply politics](https://soundstudiesblog.com/2012/11/05/review-jonathan-sterne-mp3-the-meaning-of-a-format/), and my interest in accessibility similarly asks questions like "who is included by default?", "what interactions does this enable?", and "which people does this disable?"  

Thankfully, the math educators I know who are interested in OER share similar concerns. They also feel that OER has the potential to liberate their pedagogy—which will include learning aspects of formatting and accessibility, to create materials that anticipate a larger and more inclusive set of learners.  

One common way of writing math is in LaTeX. (If you're unfamiliar, [Using LaTeX in Pressbooks](https://pressbooks.bccampus.ca/pressbookslatex/part/when-to-use-latex/) provides a nice, very "non-specialist" overview.) Unfortunately, while LaTeX has become a standard way of writing and typesetting math, it was created with typesetting in mind, and largely prioritizes PDF creation. It doesn't inherently provide much for screenreader technologies.  

Although work is being done to make LaTeX output more accessible, even the most recent things I've found centers on [making well-tagged PDFs](https://www.latex-project.org/publications/2020-FMi-TUB-tb129mitt-tagpdf.pdf). That's laudable work! PDFs aren't an ideal format for OER, however. By design, the content of PDFs are not open and editable. As an open, editable standard, HTML makes **much more sense** for OER creation and dissemination, even before factoring in accessibility concerns.  

## An Online-First Approach  

Now that we've thanked LaTeX for its contributions to typesetting and realized we need something better-equipped for web pages, let's get acquainted with two new friends: MathML and MathJax.  

[MathML](https://developer.mozilla.org/en-US/docs/Web/MathML) is a project of the [W3C's Math Working Group](https://www.w3.org/Math/), who've been working to make math accessible online since 1996! Without getting too far into the weeds, MathML and HTML use a similar approach to authoring. Each surrounds content with tags that add information, with that information interpreted by web browsers: `<tags>`content`</tags>`.[^weeds]  

[^weeds]: We've arrived at a point in the conversation where someone might push up their glasses, smile, and launch into a well-meaning tangent about how MathML is a type of [XML](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction). But let's choose to just point out that impressive, inviting, and/or intimidating patch of weeds, then move right along.  

This tag-based approach makes MathML somewhat verbose.[^proof] It also introduces an astronomical capacity for user error and makes authoring MathML without a dedicated editor cumbersome at best. Thankfully, the [W3C's list of equation editors](https://www.w3.org/wiki/Math_Tools#Authoring_tools) annotates the tools that recognize handwriting. Without needing to learn the actual underlying syntax, you can use your touchpad or mouse to "draw" the equation, which one of these tools will convert into valid MathML code. 

[^proof]: The code for this three-line proof of the [Pythagorean theorem](https://developer.mozilla.org/en-US/docs/Web/MathML/Examples/MathML_Pythagorean_Theorem) starts at line 27 of the [page's source code](https://github.com/mdn/content/blob/main/files/en-us/web/mathml/examples/mathml_pythagorean_theorem/index.md?plain=1).  

Firefox and Safari currently have the best built-in support for MathML, but Chrome and Edge don't display it automatically.[^updates] To solve this problem, we can use our new friend MathJax.   

[^updates]: Two excellent places to find up-to-date info on browser support are Mozilla's [MDN](https://developer.mozilla.org/en-US/docs/Web/XML/XML_introduction), where browser support is usually listed at the bottom of each page, and [Can I Use](https://caniuse.com/?search=mathml).  

[MathJax](https://www.mathjax.org/) uses JavaScript to display math in any browser, allowing even holdouts like Chrome or Edge to join in the fun. The project website will let you know far more about it than I could, both in terms of its accessibility features and its customizations for input and output. For our purposes, the essential takeaway is that by copying and pasting another HTML `<tag>` into a webpage, you can instruct any web browser to load MathJax, then display math content correctly both for sighted learners and learners who use screenreader technologies.  

If you want to learn more, the [best single-page explanation of MathML and MathJax](https://accessibility.psu.edu/math/mathml/) I'd found was written by the Accessibility and Usability folks at Penn State.  

## A Workflow for Online Math  

Okay! Now that we understand the role of MathML and MathJax, what's the fastest way to make math accessible online?  

Having tested different options in Pressbooks and LibGuides, here's what I suggest:  

1. Use one of the authoring tools in the [W3C's list of equation editors](https://www.w3.org/wiki/Math_Tools#Authoring_tools) that recognizes handwriting to create the [MathML](ttps://developer.mozilla.org/en-US/docs/Web/MathML) code from what you write using a trackpad or mouse. You might try [MyScript Math](https://webdemo.myscript.com/views/math/index.html) or [MathType](https://www.wiris.com/en/mathtype/).  
2. Copy that MathML code into the “text” or “code” or “source” view of your web-authoring platform (like Pressbooks or LibGuides).  
3. Add the MathJax script code, also in the “text” or “code” or “source” view.  
    - You might use the code under the “Using MathJax version 3” heading on [MathJax’s own “Getting Started” page](https://www.mathjax.org/#gettingstarted) or the code under the [“Add MathJax in an HTML Document”](https://accessibility.psu.edu/math/mathml/) section of the PennState page. The version I recently tested in Pressbooks and LibGuides was from the PennState page.  
    - You’ll only need to add this `<script>` code once per page, not once per section of `<math>` code.  
    - If you're displaying math on many pages, you might want to have that `script` tag automatically included in whatever platform you're using. Usually things like this are included in [the `<head>` section](https://developer.mozilla.org/en-US/docs/Learn/HTML/Introduction_to_HTML/The_head_metadata_in_HTML) of a web page.  
        - LibGuides has an interface for this, at least for administrators.  
        - Static site generators like Jekyll often do this using [includes](https://jekyllrb.com/docs/includes/).  
        - It doesn't seem possible in Pressbooks, from a quick skim of their [Network Manager Guide](https://networkmanagerguide.pressbooks.com/) and [User Guide](https://guide.pressbooks.com/), but their support certainly should be able to give you a more definitive answer than my 3 minute search.  
4. Test in Chrome and Edge (the browsers most likely to not support MathML directly), as well as Firefox and Safari.  
5. **Optional but Highly Recommended**: Grumble about Chrome and Edge developers not building accessibility support directly into their browser.  

## For Authors Who Already Know LaTeX  

If you're working with an author who already knows LaTeX—or if you know it yourself—there's still good news! The W3C lists many [LaTeX to MathML converter](https://www.w3.org/wiki/Math_Tools#LaTeX_converters) tools, as well as converters for other systems like ASCIIMath or different types of scientific computation.  

For you, "Step 1" of the above workflow would instead be "use a converter to generate the MathML code". You'll still want to add MathJax to your page, then test it in (and perhaps grumble about) various browsers.  