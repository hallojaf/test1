# Ruby debugger gem

## installation:
```bash
gem install debugger
```
or in you Gemfile:
```ruby
gem 'debugger'
```

[installation guide](https://github.com/cldwalker/debugger#install)

## settings:
Mainly focus on these two settings:

- [set autoeval](http://bashdb.sourceforge.net/ruby-debug.html#Autoeval)
- [set autolist](http://bashdb.sourceforge.net/ruby-debug.html#Autolist)

For a full list, read the [config guide](http://bashdb.sourceforge.net/ruby-debug.html#ruby_002ddebug-settings) (be curious, go skim it).

You can use these settings in two distinct ways:

- type them everytime you debug: when you're in debugger mode, you can simply type: set autoeval and set autolist.
- automatically do it: create a .rdebugrc file under your user root and add both commands to it.

## usage:

The main usage that you need to focus on:

- [n[ext]](http://bashdb.sourceforge.net/ruby-debug.html#Next)
- [c[ontinue]](http://bashdb.sourceforge.net/ruby-debug.html#Continue)
- [s[tep]](http://bashdb.sourceforge.net/ruby-debug.html#Step)
- [fin[ish]](http://bashdb.sourceforge.net/ruby-debug.html#Finish)
- [h[elp]](http://bashdb.sourceforge.net/ruby-debug.html#Help)


