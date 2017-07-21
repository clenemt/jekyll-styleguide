---
---

## How it works

* Use `.container` for fixed width or `.container-fluid` for full width.
* Use `.row` to group your content together.
* Put your individual content inside `.col`.
* Beware, it uses flexbox behind 🤡

{% highlight html %}
<div class="container">
  <div class="row">
    <div class="col">Danny</div>
    <div class="col">Boy</div>
  </div>
</div>
{% endhighlight %}

## Grid options

See how aspects of the DBK grid system work across multiple devices with a handy table.

<table>
  <thead>
    <tr>
      <th></th>
      <th>Extra small<br><small>&lt;576px</small></th>
      <th>Small<br><small>&ge;576px</small></th>
      <th>Medium<br><small>&ge;768px</small></th>
      <th>Large<br><small>&ge;992px</small></th>
      <th>Extra large<br><small>&ge;1200px</small></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Max container width</th>
      <td>None (auto)</td>
      <td>540px</td>
      <td>720px</td>
      <td>960px</td>
      <td>1140px</td>
    </tr>
    <tr>
      <th>Class prefix</th>
      <td><code>.col-</code></td>
      <td><code>.col-sm-</code></td>
      <td><code>.col-md-</code></td>
      <td><code>.col-lg-</code></td>
      <td><code>.col-xl-</code></td>
    </tr>
    <tr>
      <th># of columns</th>
      <td colspan="5">12</td>
    </tr>
    <tr>
      <th>Gutter width</th>
      <td colspan="5">30px (15px on each side of a column)</td>
    </tr>
    <tr>
      <th>Nestable</th>
      <td colspan="5">Yes</td>
    </tr>
    <tr>
      <th>Column ordering</th>
      <td colspan="5">Yes</td>
    </tr>
  </tbody>
</table>

## Auto-layout columns

### Equal-width

For example, here are two grid layouts that apply to every device and viewport, from `xs` to `xl`. Add any number of unit-less classes for each breakpoint you need and every column will be the same width.

{% example html div=doc-show-row %}
<div class="container">
  <div class="row">
    <div class="col">1 of 2</div>
    <div class="col">2 of 2</div>
  </div>
  <div class="row">
    <div class="col">1 of 3</div>
    <div class="col">2 of 3</div>
    <div class="col">3 of 3</div>
  </div>
</div>
{% endexample %}

Equal-width columns can be broken into multiple lines as such:

{% example html div=doc-show-row %}
<div class="container">
  <div class="row">
    <div class="col">1 of 2</div>
    <div class="col">2 of 2</div>
    <div class="w-100"></div>
    <div class="col">1 of 2</div>
    <div class="col">2 of 2</div>
  </div>
</div>
{% endexample %}

### Setting one column width

You can set the width of one column and have the sibling columns automatically resize around it.

{% example html div=doc-show-row %}
<div class="container">
  <div class="row">
    <div class="col">1 of 3</div>
    <div class="col-6">2 of 3 (wider)</div>
    <div class="col">3 of 3</div>
  </div>
  <div class="row">
    <div class="col">1 of 3</div>
    <div class="col-5">2 of 3 (wider)</div>
    <div class="col">3 of 3</div>
  </div>
</div>
{% endexample %}

### Variable width content

Use `col-{breakpoint}-auto` classes to size columns based on the natural width of their content.

{% example html div=doc-show-row %}
<div class="container">
  <div class="row">
    <div class="col col-lg-2">1 of 3</div>
    <div class="col-md-auto">Variable width content</div>
    <div class="col col-lg-2">3 of 3</div>
  </div>
  <div class="row">
    <div class="col">1 of 3</div>
    <div class="col-md-auto">Variable width content</div>
    <div class="col col-lg-2">3 of 3</div>
  </div>
</div>
{% endexample %}

## Responsive classes

### All breakpoints

For grids that are the same from the smallest of devices to the largest, use the `.col` and `.col-*` classes.

{% example_resize html div=doc-show-row %}
<div class="container">
  <div class="row">
    <div class="col">.col</div>
    <div class="col">.col</div>
    <div class="col">.col</div>
    <div class="col">.col</div>
  </div>
  <div class="row">
    <div class="col-8">.col-8</div>
    <div class="col-4">.col-4</div>
  </div>
</div>
{% endexample_resize %}

### Stacked to horizontal

Using a single set of `.col-sm-*` classes, you can create a basic grid system that starts out stacked on extra small devices before becoming horizontal on desktop (medium) devices.

{% example_resize html div=doc-show-row %}
<div class="container">
  <div class="row">
    <div class="col-sm-8">.col-sm-8</div>
    <div class="col-sm-4">.col-sm-4</div>
  </div>
  <div class="row">
    <div class="col-sm">.col-sm</div>
    <div class="col-sm">.col-sm</div>
    <div class="col-sm">.col-sm</div>
  </div>
</div>
{% endexample_resize %}

### Mix and match

Don't want your columns to simply stack in some grid tiers? Use a combination of different classes for each tier as needed. See the example below for a better idea of how it all works.

{% example_resize html div=doc-show-row %}
<div class="container">
  <!-- Stack the columns on mobile by making one full-width and the other half-width -->
  <div class="row">
    <div class="col-12 col-md-8">.col-12 .col-md-8</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  </div>
  <!-- Columns start at 50% wide on mobile and bump up to 33.3% wide on desktop -->
  <div class="row">
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
    <div class="col-6 col-md-4">.col-6 .col-md-4</div>
  </div>
  <!-- Columns are always 50% wide, on mobile and desktop -->
  <div class="row">
    <div class="col-6">.col-6</div>
    <div class="col-6">.col-6</div>
  </div>
</div>
{% endexample_resize %}

## Alignment

### Vertical alignment

{% example html div=doc-show-row,doc-show-row-flex-cols %}
<div class="container">
  <div class="row align-items-start">
    <div class="col">col</div>
    <div class="col">col</div>
    <div class="col">col</div>
  </div>
  <div class="row align-items-center">
    <div class="col">col</div>
    <div class="col">col</div>
    <div class="col">col</div>
  </div>
  <div class="row align-items-end">
    <div class="col">col</div>
    <div class="col">col</div>
    <div class="col">col</div>
  </div>
</div>
{% endexample %}

{% example html div=doc-show-row,doc-show-row-flex-cols %}
<div class="container">
  <div class="row">
    <div class="col align-self-start">
      One of three columns
    </div>
    <div class="col align-self-center">
      One of three columns
    </div>
    <div class="col align-self-end">
      One of three columns
    </div>
  </div>
</div>
{% endexample %}

### Horizontal alignment

{% example html div=doc-show-row %}
<div class="container">
  <div class="row justify-content-start">
    <div class="col-4">.col-4</div>
    <div class="col-4">.col-4</div>
  </div>
  <div class="row justify-content-center">
    <div class="col-4">.col-4</div>
    <div class="col-4">.col-4</div>
  </div>
  <div class="row justify-content-end">
    <div class="col-4">.col-4</div>
    <div class="col-4">.col-4</div>
  </div>
  <div class="row justify-content-around">
    <div class="col-4">.col-4</div>
    <div class="col-4">.col-4</div>
  </div>
  <div class="row justify-content-between">
    <div class="col-4">.col-4</div>
    <div class="col-4">.col-4</div>
  </div>
</div>
{% endexample %}

### No gutters

The gutters between columns in our predefined grid classes can be removed with `.no-gutters`.

{% example html div=doc-show-row %}
<div class="row no-gutters">
  <div class="col-12 col-sm-6 col-md-8">.col-12 .col-sm-6 .col-md-8</div>
  <div class="col-6 col-md-4">.col-6 .col-md-4</div>
</div>
{% endexample %}

## Reordering

### Flex order

Use `.order-` classes for controlling the **visual order** of your content. These classes are responsive, so you can set the `order` by breakpoint (e.g., `.order-1.order-md-2`).

{% example html div=doc-show-row %}
<div class="container">
  <div class="row">
    <div class="col">First, but unordered</div>
    <div class="col order-12">Second, but last</div>
    <div class="col order-1">Third, but second</div>
  </div>
</div>
{% endexample %}

### Offsetting columns

Use margin utilities like `.mr-auto` to force sibling columns away from one another.

{% example html div=doc-show-row %}
<div class="row">
  <div class="col-md-4">.col-md-4</div>
  <div class="col-md-4 ml-auto">.col-md-4 .ml-auto</div>
</div>
<div class="row">
  <div class="col-md-3 ml-md-auto">.col-md-3 .ml-md-auto</div>
  <div class="col-md-3 ml-md-auto">.col-md-3 .ml-md-auto</div>
</div>
<div class="row">
  <div class="col-auto mr-auto">.col-auto .mr-auto</div>
  <div class="col-auto">.col-auto</div>
</div>
{% endexample %}
