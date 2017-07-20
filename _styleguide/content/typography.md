---
---

## Global settings

DBK sets basic global display, typography, and link styles. Specifically, we:

- Use [Proxima Nova](https://www.myfonts.com/fonts/marksimonson/proxima-nova/) as base font for text and headings.
- Use [Velino Display](https://www.myfonts.com/fonts/dstype/velino-display/) for alternative headings.
- For a more inclusive and accessible type scale, we assume the browser default root `font-size` (typically 16px) so visitors can customize their browser defaults as needed.
- Set the global link color via `$link-color` and apply link underlines only on `:hover`.

## Headings

All HTML headings, `<h1>` through `<h6>`, are available:

{% example html %}
<h1>h1. de Bijenkorf</h1>
<h2>h2. de Bijenkorf</h2>
<h3>h3. de Bijenkorf</h3>
<h4>h4. de Bijenkorf</h4>
<h5>h5. de Bijenkorf</h5>
<h6>h6. de Bijenkorf</h6>
{% endexample %}

`.h1` through `.h6` classes are also available:

{% highlight html %}
<p class="h1">h1. de Bijenkorf</p>
<h1 class="h2">h2. de Bijenkorf</h1>
<p class="h3">h3. de Bijenkorf</p>
<p class="h4">h4. de Bijenkorf</p>
<h3 class="h5">h5. de Bijenkorf</h3>
<p class="h6">h6. de Bijenkorf</p>
{% endhighlight %}

### Heading types

DBK has the need for different header styles. Use the `.headings-*` to achieve this effect:

{% example html %}
<h1 class="headings-1">h1. de Bijenkorf</h1>
<p class="h2 headings-1">h2. de Bijenkorf</p>
<h1 class="h3 headings-1" >h3. de Bijenkorf</h1>
{% endexample %}

It is easy to achieve a banner look with such classes:

{% example html %}
<h1 class="text-center">
  <span class="h4">dames</span><br>
  <span class="headings-1">badmode</span>
</h1>
{% endexample %}

## Inline text elements

Styling for common inline HTML5 elements.

{% example html %}
<p>You can use the mark tag to <mark>highlight</mark> text.</p>
<p><del>This line of text is meant to be treated as deleted text.</del></p>
<p><u>This line of text will render as underlined</u></p>
<p><small>This line of text is meant to be treated as fine print.</small></p>
<p><strong>This line rendered as bold text.</strong></p>
<p><em>This line rendered as italicized text.</em></p>
{% endexample %}

`.mark` and `.small` classes are also available to apply the same styles as `<mark>` and `<small>`.

## Lists

### Unstyled

Remove the default `list-style` and left margin on list items (immediate children only). **This only applies to immediate children list items**, meaning you will need to add the class for any nested lists as well.

{% example html %}
<ul class="list-unstyled">
  <li>Lorem ipsum dolor sit amet</li>
  <li>Consectetur adipiscing elit</li>
  <li>Integer molestie lorem at massa</li>
  <li>Facilisis in pretium nisl aliquet</li>
  <li>Nulla volutpat aliquam velit
    <ul>
      <li>Phasellus iaculis neque</li>
      <li>Purus sodales ultricies</li>
      <li>Vestibulum laoreet porttitor sem</li>
      <li>Ac tristique libero volutpat at</li>
    </ul>
  </li>
  <li>Faucibus porta lacus fringilla vel</li>
  <li>Aenean sit amet erat nunc</li>
  <li>Eget porttitor lorem</li>
</ul>
{% endexample %}

### Inline

Remove a list's bullets and apply some light `margin` with a combination of two classes, `.list-inline` and `.list-inline-item`.

{% example html %}
<ul class="list-inline">
  <li class="list-inline-item">Lorem ipsum</li>
  <li class="list-inline-item">Phasellus iaculis</li>
  <li class="list-inline-item">Nulla volutpat</li>
</ul>
{% endexample %}
