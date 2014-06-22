Big Bang Rewrite
================

A number of times now I've been in discussions about outdated, untamed piece of code or entire system even (so-called "legacy"), where smart people wondered what to do with it.

Big Bang Rewrite is always being mentioned there. Most basic and most often mentioned strategy: rewrite completely, from scratch. And then, all will be well.

Xcept... there are gotchas, of course: knowledge, time, tediousness of the job, and most of all surprises, oh, the nasty surprises.

Prerequisites
-------------
To get most of this post, first read / watch the following.

1. Programming is theory building - fabulous piece by Peter Naur that best explains what programmers really do and why writing code is merely an after-thought.

2. Language matters - a really illuminating summary of Lera Boroditsky's studies and experiments showing how much people are influenced by language used, how it shapes their thinking and frames mindsets. Just being offered a different metaphor can greatly affect proposed solutions by people facing same problem.

3. Untamed rather than legacy - the fact that language matters caused me personally to prefer first rather than second phrase. Legacy code shifts responsibility and makes programmers look at the problem in a way that inhibits, rather than helps solutions-finding. 
 
The obvious
-----------
It's untamed code, uncharted territory, alas no-one knows how long it will take, and when pressed for estimates, folks will answer with years of works for everybody on the team(s).

Fixing old bugs and walking knee-deep in shit is no fun, seriously. Best people are best for the job, but don't expect even your best to stick around when what you can offer is dull and demotivating and long-lasting endeavour without much to show after they've finished. 
Let's be honest, fixing things that are not your fault* is rarely amusing or interesting for people.

*) Xcept it is your fault, but more on that another time

So, best programmers are taken off from new features and assigned to a really unattractive (to say the least) task. Risk? They'll leave and knowledge about the system that they posessed will be lost.

Gotchas - the obvious ones at least - then:

1) Best people might leave if assigned to the task, but are best guarantees that task is done well.
2) Assigning non-best carries risk of job NOT done, or not done well.
3) No one knows the way, mistakes are likely. Estimates say "here be dragons" and scare everybody away.
4) It's costly. Time-wise especially. It's a stab in the dark, with no certainty about... pretty much everything. End result, victory, time taken... you name it.

Not so obvious
--------------
Those who want to do the rewrite usually are plain sick of being limited by status quo. The current code gets in their way too often and they want changes. The mindset is perfectly fine and speaks well of them, but IMO - sometimes blinds them to few things.

1. Current code works and often helps users in their jobs. Bashing it is fine, but whatever you offer should solve all the problems current code solves. And it's the knowledge of those problems that we don't have - that's why untamed code.

2. It's sometimes **NOT** OK to break things while improving them. Depends on your user base, risk of breaking features might be quite enough to abandon rewrite attempts.

3. Occupational illness of programmers is underestimation (or plain optimism). When rewriting software... it's deadly.

4. Usual remedy to programmers estimation optimism is adding error-margin or doubling by two. No blind guesses should be used for rewrites though. Neither should be adding several years to estimate, "just to be safe". Much better idea is to run several pilot efforts, to find out anything more required to offer better estimates. 

Strikingly overlooked
---------------------

Now that's the crux of that post. That's the part that I'm baffled about the most, in all those discussions. It's that folks whom I talk to, intelligent people, often experienced programmers, they fail to realize (or forget about, or even choose to overlook?) simple thing: someone was bound to stumble upon their product rewrite. Spaghetti code, big ball of mud, technical debt, dependency tangles, legacy code  - these phrases, they all came from SOMETHING! And once you start looking for such cases, once you start reading written accounts of those who were there before you... two things spring to immediate attention.

### FAILURES
Number One. Failures. Fate of those, who attempt such rewrite usually fail. There's a combination of reasons for failure that rarely has anything to do with skill of poor daredevils. It has however, a LOT to do with approach chosen.
 
### LEARNED FROM MISTAKES
N umber Two, and the more interesting one as well. Those who failed but persisted (or just had to find a way because they were consultants dealing with many such cases), realized something in the process.

**It's about knowledge.** 

So, there are couple of ways folks devised to actually have their purpose achieved AND avoid rewriting blindly. 

1. The Mikado Method - by ...?
2. Feather's Seams and Sketches approach, from his most famous Working Effectively with Legacy Code.
3. Ivy pattern, popularized by ThoughtWorks.

All three deserve whole books, not just posts, so I won't even try to do them justice. Here's a brief intro for each.

#### The Mikado Method
Named after Japanese Mikado game, a game of sticks (Polish: bierki), where one stick - the Mikado (Japanese for emperor) stick is worth enough points to almost always warrant victory to person who picks it up. 

Whatever you aim for - you must not touch other sticks but get Mikado stick. The metaphor works for rewrites usually as well.

Method tries to portray your steps to Mikado stick (aka your goal) on a graph, so that you have the knowledge of what's required.

 
#### Feathers Seams and Sketches
Michael Feathers proposed to write Effect Sketches, where you would try to capture what will be affected if you change certain component / class / whatever. That way you are able to glimpse into how much risk given change brings. Sketches aone weren't enough, he also proposed following algorithm for changing legacy code:

1. Find chokepoints
2. Write tests
3. Make change
 
Chokepoints would be narrow points where module changes would manifest themselves for certain. 
 
#### Ivy pattern
Another idea stemming from a failed big bang rewrite. Name comes from how ivy strangles even large plants, by intercepting light and water that they normally get. Now, make your unwanted module/system/component such plant and do a thin layer that just intercepts all inputs and either directs them to newly written code or lets them go without interference.

 
Summary
=======
Don't blindly attempt it.

Aside from obvious gotchas, remember: current code has a number of features and fixes that are worthwhile to customers (or perhaps were? how can you make sure?) and just getting rid of it may damage you more than it's worth.

Again, **it's about knowledge**. It's not whether you have inherited it or wrote it yourself, it's your code now (no matter who wrote it or broke it via hacking), it serves your users and helps them, it earns your paycheck (or diminishes it, but without it things'll get much worse). It simply is a code that you need to service but you don't know how. 

**Others have been there**, use their wisdom instead of learning it the hard way. Look up Mikado method, Feather's seams and sketches or think of cutting out module by module with Ivy / Strangler pattern. 

Don't guesstimate, do yourself a favour and hack at it for some time just to see what you have there. It's about knowledge, remember?


Further reading
===============

0. Prerequisites:
  1. Peter Naur: Programming is Theory Building
  2. Lera Boroditsky: Language Shapes Thought
  3. TBA: my blog post on why untamed rather than legacy.
1. The Mikado Method whitepaper
2. The Ivy Pattern (Strangler Pattern) paper
3. The Ivy Pattern (Strangler Pattern) - Martin Fowler's blog
4. Michael Feathers: Working Effectively with Legacy Code


Post meta
=========

Tags: untamed, big bang rewrite, rewrite, Michael Feathers, Seams and Sketches, Mikado method, Ivy pattern, Strangler pattern, "legacy", Peter Naur, Lera Boroditsky, language, programming
Date: 2014-06-21 10:59
