---
title: "Obsidian Dataview Plugin Patterns"
date: 2024-12-16
last_modified_at: 
note-taking: true
obsidian: true
excerpt: "Some of the things one can do with the Dataview pluging for Obsidian."
status: ":herb:"
toc: true
published: true
blogged: true
---

<span class="audience">Assumed audience</span> People at least passably familiar with Obsidian. See [my other notes on Obsidian]({% link _notes/Note-taking/Obsidian/index.html %}) for more context.
{: .notice }

[[beginning-to-use-obsidian]]  
[[obsidian-plugins]]  

## What is the Dataview plugin?  

[Dataview](https://blacksmithgu.github.io/obsidian-dataview/) lets your Obsidian notes act like a database. It not only has its own query language built-in, but you can also use Javascript if you know-slash-dare. This means that it's able to tell you many things about your notes, if you're able to invoke the questions correctly.  

Thankfully, people like [S Blu](https://github.com/s-blu) have made documentation in the form of an [Example Vault for Dataview Queries](https://s-blu.github.io/obsidian_dataview_example_vault/) and a [Basic Dataview Query Builder](https://s-blu.github.io/basic-dataview-query-builder/)!  

To extend this collective knowledge, I'll share some of my own uses for Dataview.  

## Events in a Year  

Here's a query that's particularly useful at the end of a year. (In fact, I'm typing this note up on the same day that I submitted a yearly review.)  

On my team at work, we're each available for individual on-demand appointments with faculty, and we schedule these through a particular service. The frequency of these is highly variable, so I'll sometimes go for a week without any of these appointments and other times I'll have three or more in a single day.  

I keep daily notes in Obsidian and annotate each day's note with how many of these appointments occurred that day, along with a number of other annotations that are basically just binary "did I do the thing or didn't I?" sort of indicator. In each day's note, the annotation follows the Dataview convention: the entire annotation is in a single pair of square brackets, and the name of the thing being tracked (or the "key") is separated from the associated value by two colons. So if I have three of these appointments on a particular day, that annotation looks like: `[on-demand:: 3]`.  

For this query, I wanted to show these three things:  
- a list of the specific days in a specific time frame (a calendar year) with one of these on-demand appointments,  
- a count of these specific days, and  
- the total number of these appointments.  

After a little bit of trial & error, I managed to modify S Blu's [Show a sum row for numeric values and durations](https://s-blu.github.io/obsidian_dataview_example_vault/20%20Dataview%20Queries/Show%20a%20sum%20row%20for%20numeric%20values%20and%20durations/) pattern to work with my own note structure. However, I noticed that the place that should show **how many days** was two numbers too high.  

I asked my spouse, who has far more Javascript familiarity than I do, and she helped me understand what was happening and customize Su Blu's query even further.  

We added only three lines, the ones that start with:  
- `// emily & ryan` (line 25),  
- `const. numDaysRow =` (line 26), and  
- `DQL.values.push(numDaysRow)` (line 30).  

The `FROM` line will vary according to how you set up your own daily notes. I use the [Periodic Notes plugin](https://github.com/liamcain/obsidian-periodic-notes) to generate my daily notes; if you use Obsidian's default or some other plugin, the pattern your query needs will almost certainly be different.  

{% highlight javascript linenos mark_lines="25 26 30" %}
```dataviewjs
// Paste your DQL for the table here, with the FROM and WHERE customized for your own notes structure and your query's specific annotation key:
const query = `TABLE on-demand
FROM "_pj/2024/2024dd"
WHERE on-demand > 0`
// change the name of the total row, if you like:
const nameOfTotalRow = "Total On-Demand Appointments";

// you don't need to touch this, normally.
// get the data from the query above
let DQL = await dv.tryQuery(query);
const sums = [nameOfTotalRow];
// for each header (except the first one, which is "File")...
for (let i = 1; i < DQL.headers.length; i++) {
    let sum = 0;
    // ... and for each row ...
    for (let k = 0; k < DQL.values.length; k++) {
        // get the current cell (row k and column i) and add it to the sum, if set
        let currentValue = DQL.values[k][i];
        if (currentValue) sum += currentValue 
    }
    if (!sum) sum = ""
    sums.push(sum);
}
// emily & ryan teach this to count, not just add
const numDaysRow = ["Number of Days", DQL.values.length]
// add a divider line for visual distinction between the query and the sums (thanks, Jillard!), add both to the table data
let hrArray = Array(DQL.headers.length).fill('<hr style="padding:0; margin:0 -10px;">');
DQL.values.push(hrArray)
DQL.values.push(numDaysRow)
DQL.values.push(sums)
//print the table
dv.table(DQL.headers, DQL.values)
```
{% endhighlight %}

There you go, hopefully just in time to help you out with whatever end-of-year reflections you also might be working on.  