Technical Setup For OpenJDK 8 Test Fest
=======================================
Newest event comes our way fast, [Test Fest][1]. See [event page][2] for details, or if you just want a quick glimpse what's that read [newsflash][3] - my previous very concise post about it.

I wanted to outline technical setup that's needed for one to participate effectively and NOT waste their time during the event itself.

**__DO__** bring your laptop and it's power supply with you, obviously. That's like, most important. 

<-- more -->

Procedure
=========

Nicely outlined in [this blog post][4], but please do note the comment by Peter Lawrey, about using `.configure` instead of `make sanity`.

Also, to call both `get_source.sh` and `configure` you will have to make them executable by `chmod 744 fileName`.

Running first one lasts a few minutes. Running second may cause errors due to missing libraries. Just following script's advice is quite enough. It usually says what is missing and how to apt-get it. At least for me it did. ;-)

Generally - set aside half an hour - it takes some time to finish.

Speedup = ccache
----------------

You may want to add ccache in version greater than 3.1.4. Ubuntu 10.4 didn't have it in repositories, but I presume newer systems do. Lesser version won't matter as build won't use it.


Testing
=======

Prepare your environment heeding the following:
* you never will change API you will test
* you cannot introduce any dependencies (Fest, Calliper, etc. forget it)
* you should write simple and concise tests


[1]: link   "Geecon blogs on Test Fest"
[2]: link   "PJUG even page - go register / waitlist"
[3]: link   "Newsflash: Test Fest from LAFK's blog"
[4]: http://blog.asd-networks.com/blog/blog-post/2013/01/21/open-jdk-8/   "Blog outlining procedure to get OpenJDK 8 sources" 
