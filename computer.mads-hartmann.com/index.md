---
title: ~
---

# ~

I've tried a lot of different approaches to managing my dotfiles over the years. They varied in scope and complexity, but they all eded up being too much work to maintain. So this is my final iteration[^1].

## "philosophy"

- I automate as little of the initial setup as possible (installing apps etc.). Spending time automating something that it's quite unlikely I'll ever run again on the same OS, the same hardware, or even the same desired end goal, just wasn't worth the effort for me.

- I only change the defaults when I absolutely have to.

## Highlights

- I use a [bare git](https://git-scm.com/docs/git-clone#Documentation/git-clone.txt---bare) repository - [mads-hartmann/dotfilesv2](https://github.com/mads-hartmann/dotfilesv2) - in my `$HOME` folder for the actual dotfiles 

- I maintain a little setup guide for the few occasions where I actually have to set up a new mac from scratch (see below).

- I use ZSH as my shell (that's the default since macOS Catalina). I use Spaceship as my prompt configuration.

## Setting up a new mac

<ol>
  {% for step in site.setup_steps %}
  <li>
    <a href="#{{ step.title | slugify }}">{{step.title}}</a>
  </li>
  {% endfor %}
</ol>

{% for step in site.setup_steps %}
  <h3 id="{{ step.title | slugify }}">  {{step.title}}</h3>
  {{step.content | markdownify }}
{% endfor %}

[^1]: Please let this be the final version.
