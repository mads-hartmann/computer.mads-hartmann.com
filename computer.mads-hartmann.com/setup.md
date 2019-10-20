---
title: Setting up a new mac
permalink: /setting-up-a-new-mac
---

Here we go again.

{% for step in site.setup_steps %}
  <details>
    <summary>{{step.title}}</summary>
    {{step.content | markdownify }}
  </details>
{% endfor %}
