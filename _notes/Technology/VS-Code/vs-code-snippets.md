---
title: "VS Code Snippets"
date: 2023-03-26
last_modified_at: 2023-03-26
excerpt: "Handy snippets for digital bullet journalling or HTML and CSS coding."  
status: ":seedling:"
published: true
blogged: true
technology: true
technology-vs-code: true
---

I'm a fan of keeping a Bullet Journal in a text editor, as I've written about in [[task-tracking-in-dendron]].  

A Digital Bullet Journal might not seem like a very straightforward approach, but here's a non-exhaustive list of things I like about it:  

- it's more customizable than most dedicated Bullet Journal or GTD programs  
- the files involved (text or Markdown) are about as small and durable as computer files can be  
- it's relatively distraction-free  

## Context and Syntax  

Snippets are a substantial part of this customization. I use quite a few snippets in VS Code, both for bullet journal / daily log sort of things and HTML / CSS patterns. They allow both for quickly including repetitive patterns and for automatically including things like [dates or times](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_variables). There are [more advanced possibilities](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_snippet-syntax), too, but I haven't really explored those yet.  

### Snippet Considerations  

Probably the most difficult thing about using snippets isn't realizing where you can use them or even setting them up in your text editors or system-level keyboard settings; it's figuring out which prefixes and shortcodes to use as the expansion pattern. For the last few years, I've settled on usually using a semicolon followed immediately by a memorable abbreviation. I can't think of a time in natural language when I'd write a semicolon without a space after it, so it's served well as a pattern for invoking these kind of snippets. The `;` also is availably right under my pinky on a physical keyboard, and usually is on the primary or occasionally secondary level of a mobile device's digital keyboard as well.  

I still occasionally have the muscle memory of using a strudel (a `@`, which you might call an "at sign" if you're not of the pastry persuasion), so I've set up a number of these snippets to allow multiple invocation patterns. If you're going to use wizardry, do so inclusively!  

### VS Code Snippet Syntax  

You can store snippets in VS Code in a number of different places. For my purposes, it's so far been sufficient to use a [global snippets file](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_create-your-own-snippets) and add the few languages in scope. That way I don't have to remember to add each pattern for each new language I start using. I can just keep a single file and occasionally add any new language to the snippet's [scope](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_snippet-scope) as desired.  

Here's my basic pattern for a snippet, with comments added after `//`:  
```json
"snippet name": { // I usually use the output, i.e. `#;done`
    "prefix": ["@dd", ";dd"], // the string(s) that will invoke the snippet
    "scope": "markdown,yaml", // the language(s) where the snippet will work, if you don't want it to work everywhere
    "description": "Add #;done", // just a note to you or others sharing your files
    "body": [ // the snippet pattern itself, with any new line on another new line
        "#;done",
    ],
}

```

## Bullet Journal / Task Management Snippets  

I keep a Digital Bullet Journal mostly based around weekly notes. I also use Dendron's tags, which start with `#` characters. As far as I can tell, most other Markdown-based tools I've tried out (like Zettlr or Obsidian) have similarly converged on using `@` for tagging people and `#` for tagging concepts.  

Here's a few of the snippets I've found very handy for this kind of DigiBuJo / text-file-based task management system.  

### `#;done`  

I've found that adding a tag indicating that I'm done with a particular day or task makes it much easier to scan files and reacquaint myself to what info is now just a record of the past and what info is still "live" or "in play." It helps when skimming using an outline view, when folding headings, or even just when opening a note and realizing that there's a `#;done` annotation on the first heading, indicating that the entire week is now just a log without anything that still needs my attention.  

However, just adding a `#done` string will rapidly make that tag unweildly; I don't foresee a frequent need to see quickly see every single day I've marked with that, unlike tags such as `#urgent` or `#reading`.  

Therefore, this snippet is a tag intentionally broken by an interrupting semicolon.  

```json
"#;done": {
    "prefix": ["@dd", ";dd"],
    "scope": "markdown,yaml",
    "description": "Add #;done",
    "body": [
        "#;done",
    ],
},
```

### `#;done;(YYYY-MM-DD)`  

When I have a note that has multiple tasks for a longer project, it's often useful to know not just that something's accomplished, but also **when** it was done. This snippet builds on the previous one with an automatic date annotation.  

```json
"#;done; + today's date": {
    "prefix": ["@dtd", ";dtd"],
    "scope": "markdown,yaml",
    "description": "Add #;done + today's date in YYYY-MM-DD format; altered from Taskpaper format for Dendron tags",
    "body": [
        "#;done;($CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE)",
    ],
},
```

## HTML / CSS Snippets  

### Tables 

Here's a few snippets related to making more [accessible HTML data tables](https://webaim.org/techniques/tables/data). Each of these includes row or column headers, `scope=col` or `scope=row` indicators, and captions.  

They also use the VS Code syntax for [tab stops](https://code.visualstudio.com/docs/editor/userdefinedsnippets#_tabstops) and for escaping quotation marks.  

Tab stops use dollar signs followed by numbers, like `$1`. You indicate the first tab stop with a `$1`, the second with `$2`, and so on, then optionally indicate your snippet's "final" tab stop with a `$0`. As of 2023-03-26, I'm including final tab stops in these. As I continue using them, I may or may not decide that I'll remove those.  

The `"col"` or `"row"` part of the `scope=` attribute needs to include the quotation marks. But including a `"` in the snippet itself will confuse VS Code, as it will interpret the `"` as the end of that line! So to clarify things for these easily-confused robots, these snippets use `\` characters to escape those quotation marks. I could probably instead use single quotation marks, but decades of humanities writing in American English has apparently made double quotation marks a difficult habit to break.  

#### Accessible HTML Table  

Here's an HTML data table that doesn't use a `<thead>`.  

```json
"@table": {
    "scope": "markdown,html,yaml",
    "prefix": ["@tt", ";tt"],
    "description": "html table with caption",
    "body": [
        "<table>",
        "<caption>$1</caption>",
        "  <tr>",
        "    <th scope=\"col\">$2</th>",
        "      <td>$3</td>",
        "      <td>$4</td>",
        "  </tr>",
        "  <tr>",
        "    <th scope=\"row\">$5</th>",
        "      <td>$6</td>",
        "      <td>$0</td>",
        "  </tr>",
        "</table>",
    ],
},
```

#### Accessible HTML Table with a `<thead>`  

Here's an HTML data table that does use a `<thead>`.  

According to WebAIM's summary, a `<thead>` doesn't add or interfere with accessibility concerns. They are handy for styling (with CSS) or for printing out long tables to paper, where any `<thead>` or `<tfoot>` rows will repeat at the top or bottom of a printed page.  

```json
"@tableh": {
    "scope": "markdown,html,yaml",
    "prefix": ["@tth", ";tth"],
    "description": "html table with caption, thead, and tbody",
    "body": [
        "<table>",
        "<caption>$1</caption>",
        "<thead>",
        "  <tr>",
        "    <th scope=\"col\">$2</th>",
        "      <td>$3</td>",
        "      <td>$4</td>",
        "  </tr>",
        "</thead>",
        "<tbody>",
        "  <tr>",
        "    <th scope=\"row\">$5</th>",
        "      <td>$6</td>",
        "      <td>$0</td>",
        "  </tr>",
        "</tbody>",
        "</table>",
    ],
},
```

#### Accessible HTML Table Row  

Once you've got the structure in place for a table, you'll almost certainly want to add more rows. So here's a snippet for beginning a row. You'll need to add additional `<td></td>` indicators for each additional cell, but VS Code and most other text editors will make that pretty easy.  

```json
"@table-row": {
    "scope": "markdown,html,yaml",
    "prefix": ["@tr", ";tr"],
    "description": "html table row",
    "body": [
        "  <tr>",
        "    <th scope=\"row\">$1</th>",
        "      <td>$2</td>",
        "      <td>$0</td>",
        "  </tr>",
    ],
},
```