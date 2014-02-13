
introductions to writing a gem:

- [tutorial 1 to making a gem](https://github.com/radar/guides/blob/master/gem-development.md)
- [tutorial 2 on making a gem](http://code.tutsplus.com/tutorials/gem-creation-with-bundler--net-25281)
- [railscast on making a gem](http://railscasts.com/episodes/245-new-gem-with-bundler)

---

### XKCD

**this gem is funnny but trivial**

https://github.com/intolerable/xkcd-gem
- this is probably one of the simplest gems you'll ever see
- it uses test/unit instead of rspec to test the only method that does any work
- it uses hpricot to parse html where nokogiri would be a better choice in 2014
- check out the xkcd.gemspec file which is basically what makes this thing a gem

> Q: how can you solve this with curl?

> Q: can you make a similar gem for pinterest?

---

### Job Interview

**this gem is funny and a little complex**

https://github.com/ruby-jokes/job_interview
- a reasonably complex gem with a few files and options to play with, this one is also kindof fun
- you'll recognize some of the code that calculates the nth fibonacci number a few different ways. maybe you'll see something new here with the matrix solution
- it's tested with rspec

> Q: what other phase 1 challenges could you add to this gem?  roman numerals?

> Q: after reading through all the rspec tests, do you think this gem is well tested?  if not, what tests would you add?

> Q: does this gem have any dependencies?  if so, what are they?  can you remove them?

---

### Cocaine

**this gem is useful and complex**


https://github.com/thoughtbot/cocaine
- thoughtbot are the creators of many open source gems so check out their organization for more gems to study
- thoughtbot is also notorious for well written tests and pairing and they've hired at least one or two boots in the past that you might be able to talk to (ask Stephanie or Bella for an intro)


> Q: check out the issues list for this repo including the closed issues.  read through a few of them and check out how they were solved.

> Q: how have they organized their files and folders for this gem?  what can you learn about a well organized project from this gem

> Q: why did the authors of this gem "attempt to choose from among 3 different ways of running commands"?  how are they doing this?


---

### Rubocop

**this gem is very useful and very complex**

https://github.com/bbatsov/rubocop
- this one's big!  take your time if you're planning on studying this gem
- there's no way you'll be able to just read the code and figure it out, you'll have to spend time running the code and stepping through it to get your head around it

> Q: read through their tests.  all of them!

> Q: how does rubocop register offences?
> hints:
> - the documentation shows a sample list >> of offences (http://goo.gl/0bXDwW)
> - check out the style folder (rubocop / lib / rubocop / cop / style)
> - 100 of the 117 files in the style folder  make a call to add_offence. what happens next?
> - 17 of them don't. so what are they doing then?
