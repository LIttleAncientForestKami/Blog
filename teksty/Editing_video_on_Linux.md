Editing video on Linux or on OpenShot program
=============================================


Well, I wanted to publish some video from a recent [Lambda Lounge](http://www.meetup.com/Lambda-Lounge-Krakow/) we had, with [Garret Smith](http://www.gar1t.com/) talking about [Reliability Features of Erlang](http://www.meetup.com/Lambda-Lounge-Krakow/events/123978522/).

I used [OpenShot](http://openshot.org/) which I found easy to use, fast and generally to my liking but I wouldn't blog about it (I don't blog about every tool that works as I want it to) save for [this blog post](http://cweiske.de/tagebuch/avoid-openshot.htm) which details a terrible experience with it. 

**In a nutshell: try for yourself, but try OpenShot 1.4.3 and with libmlt higher than 1.**

[more]

Intentions
==========

While I offer a different view point I'm not trying to say that author of "Avoid OpenShot" is misguided, lies etc. My experience differed widely from his and it is this discrepancy that caused this post to happen.

My aim here is not to discredit Christian Weiske's (or any other people's) experience, but merely to say something about mine.
 
Discrepancy
===========

There's a number of problems that linked article mentions:

* frequent crashes - I had none during two days of my work
* localization problems - my locale worked without a single problem, I have commas instead of UK/US dots as well, perhaps I didn't play with audio enough?
* transition problem - none spotted
* general slowness and eating 100% CPU while doing nothing - none spotted. When I've been adding 6GB of video files or exporting videos or playing with tracks I've had rather fast response times and worth noting I had been copying large files at the same time and running STS version of Eclipse and I can't say my laptop was not responsive - and it's also a 4 CPU machine, nothing brand new even back in 2011, when I bought it.
* timeline is useless, there's problem with accessing 50th+ minute of your movie - my movie had over an hour and I could access it by pushing forward, markers and setting the timeline and sliding. Not sure how else I could've accessed it.

Why the discrepancy?
--------------------

Excellent question, I have few ideas and have contacted Christian about them.

* since 2011 something HAS changed - though with update to Christian's site, with [this link](http://txt.arboreus.com/2013/06/05/the-state-of-video-editing-on-linux.html) this seems not the case - I've however been using the very same version the other guy used and had none of the problems he had.
* OS plays a role - I used OpenShot on Ubuntu 10.04.
* Different library in my version? That seems to be worthy of investigating.
* Different usage. I had a project that took much less effort (and had no crashes, bugs and any hindrances from the tool). It wasn't a short movie though, I ended up with few minutes over one full hour of video material.

Update from Christian
---------------------

> - You had a newer version of OpenShot and libmlt. Libmlt was reason for
>   many of the crashes I had
> - My camera produces Sony AVCHD MTS[1] files; maybe the CPU problems had
>   to do with the input format somehow.
> - In my OpenShot version, the timeline could not be scrolled further
>   than some 50 minutes when you were zoomed in. Maybe this is fixed now.
> - We had many many many small video clips we combined and transitioned. 
>   Maybe you had few big ones?

[1] http://cweiske.de/tagebuch/deinterlacing-1080i.htm

Quite on the money:
* Versions
  * same OpenShot version as the guy from other linked article (The state of video editing on Linux): 1.4.3. I say so, because that's the latest present and the other article said that's what they used. Christian had 1.4.0. 
  * libmlt, I decided to check using same way [OpenShot FAQ encourages for error reporting](https://answers.launchpad.net/openshot/+faq/2245), see code below
* file format - I also had MTSes, though I have to check camera details for more.
* I had few big ones. 

````
tammo@tammo-laptop:~$ dpkg -l | grep libmlt
ii  libmlt++3                                              0.5.4-1                                           MLT multimedia framework C++ wrapper (runtim
ii  libmlt-data                                            0.5.4-1                                           multimedia framework (data)
ii  libmlt2                                                0.5.4-1                                           multimedia framework (runtime)
tammo@tammo-laptop:~$ melt --version |grep MLT
MLT melt 0.5.4
````


Essence
=======

So what to take out of this blog post? 

* Christian's experience was terrible, mine was great. I had easy time editing my video, I even had fun doing it. **You decide for yourself, keeping version numbers in mind.**
* I am curious why the difference in experience and had started talking with Christian about this (post is updated with his reply to my email). 
* His honesty was promising, I liked the fact he didn't just complain, he investigated, spent time and opened bugs where he found things should work better.
* Try OpenShot out. If you will experience things similar to those in linked post, post in Launchpad bugs with your settings.

Some of you might think I'm with OpenShot dev-team. No, I'm not. But I'm a programmer and users reporting bugs with information that can help track it down are a treasure in general. :-)
