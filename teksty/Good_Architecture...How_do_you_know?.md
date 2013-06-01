Good architecture… how do you know?
===================================
April 23, 2013

Friday, 12th (close!) April I gave a presentation at 4Developers conference in Warsaw. Short note, how it went and what was it about. Along with links to slides and others.

 
Idea
====
Because of problems with measuring and finding design flaws, highlighted last December during [FooBarCamp](http://foobarcamp.sckrk.com/agenda.html). Because it matters if we measure or not. Because I don’t like doing unnecessary work.

 
Preparation
===========
Well, I’ve done a fair amount of research and I’ve only realized, I merely scratched the topic’s surface. There could be a lot more said, but I had only an hour. I didn’t practice my presentation, nor did I rehearse it. Nor did I know about my audience beforehand – so, beside researching topic, I did little in terms of preperation.

Heck, I even managed to forget the power adaptor, so had to say it all in one go – my battery served well despite it’s age though! It ran 4 minutes more than the presentation required… ;-)

**Sources**: TBA, soon.

I can say right away though, despite being away from my materials, that two places you want to look at (for most formal and research papers) are Carnegie Mellon university and Jan Bosch’s site.

 
Delivery
========
Despite drinking till 3AM at install party just the day before, I’m told I delivered well. The feedback so far has been overwhelmingly positive. My thanks for it, though I must say, I’d like to hear more. So don’t hesitate and drop me a note please.

I liked the questions I got! Speaks well of the audience, and their quick thinking. A number of times they got ahead of me.

I did a little experiment, hoping to get feedback from the audience about what they were most interested in. So, as soon as I outlined what I believed was ground points, I asked them to choose topics:

![Architektura JDD 2013 - materiały](http://lafkblogs.files.wordpress.com/2013/04/architektura-jdd-2013-materiac582y.png?w=300&h=70)


Two most interesting topics were my faves, turns out:

1.    how to find design flaw in a project?
2.    metrics for everybody

Why you should measure and how to find a design flaw?
-----------------------------------------------------
Why you should measure architecture was the ground topic I covered before asking the audience to choose topics.

![Architektura JDD 2013 - PO CO i Wada Projektu](http://lafkblogs.files.wordpress.com/2013/04/architektura-jdd-2013-po-co-i-wada-projektu.png?w=300&h=151)

How to find design flaw I briefly outlined, ending in few surefire ways I know of:

1.    visualize architecture
2.    use SCM and a method like Feather’s Quadrant
3.    get your hands dirty and play Mikado

Which led straight to
Methods for everybody
---------------------
I started with Cyclomatic Complexity by Thomas McCabe. It’s one of software metrics I found easy to grasp and quite useful – and also helpful in measuring architecture. See below for comparison of Apache and GNU/Linux!

![Architektura JDD 2013 - McCabe](http://lafkblogs.files.wordpress.com/2013/04/architektura-jdd-2013-mccabe.png?w=300&h=137)

I later followed with Mikado method, technical debt (easy to show graphically, well supported tool-wise, quite easy to use), finally I got to Feather’s Quadrant, that combines both McCabe cyclomatic complexity and SCM logs to get quite a number of interesting facts about your project.

![Architektura JDD 2013 - Metody dla każdego](http://lafkblogs.files.wordpress.com/2013/04/architektura-jdd-2013-metody-dla-kac5bcdego.png?w=300&h=76)

 
This is all detailed (in Polish) on [my SlideShare](http://www.slideshare.net/TomekBorek/):
[Why you should measure?](http://www.slideshare.net/TomekBorek/po-co-mierzy)
[Methods for everyone](http://www.slideshare.net/TomekBorek/4-dev-metody)

 

**Critical remarks:**

    all content could have been in one place
    slides aren’t as nice to absorb as Prezi
    I might have mentioned (or underlined more) that it’s quite unlikely to ever get rid of technical debt completely

I quite agree with all three. In addition, next time I’ll have more control of the time. I ended in control, but I had to skip few points I wanted to tell more about.

Thank you all for coming and see you next time!
PS. Any feedback is welcome! :-)
