---
---

We use a fixed column layout of **12 columns** based on the [Twitter bootstrap grid](http://getbootstrap.com/css/#grid)

### Columns

Column widths can be defined per [breakpoint](/utilities/breakpoints/) using the breakpoint letters and the number for the width.

- One `.col-xs-12` element creates a full width column on mobile and above
- Two `.col-sm-6` element creates two half width column on tablet and above
- Three `.col-xs-12 .col-sm-4` elements create three full width columns on mobile, which transform into three columns at 1/3 width on desktop

{% example_resize html %}
<div class="row show-grid">
    <div class="col-xs-12 col-sm-4">Column 1</div>
    <div class="col-xs-12 col-sm-4">Column 2</div>
    <div class="col-xs-12 col-sm-4">Column 3</div>
</div>
{% endexample_resize %}

### Rows and gutter size
We employ a grid gutter width of **20px**.

When using columns, you should wrap them in a `.row` wrapper as this class has a negative margin of **10px** on each side to offset the grid gutter.

**The exception** here is on the most exterior gutter as we desire the edges of the page to be have a 20px gutter, wich differs on the product lister page, where we use 10px exterior gutter to maximise space.

### Grid utilities

#### Offset
Move columns to the right using `.col-md-offset-*` classes. These classes increase the left margin of a column by `*` columns. For example, `.col-md-offset-4` moves `.col-md-4` over four columns.

{% example html %}
<div class="row show-grid">
  <div class="col-md-4">.col-md-4</div>
  <div class="col-md-4 col-md-offset-4">.col-md-4 .col-md-offset-4</div>
</div>
<div class="row show-grid">
  <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
  <div class="col-md-3 col-md-offset-3">.col-md-3 .col-md-offset-3</div>
</div>
<div class="row show-grid">
  <div class="col-md-6 col-md-offset-3">.col-md-6 .col-md-offset-3</div>
</div>
{% endexample %}

#### Ordering
Easily change the order of our built-in grid columns with `.col-md-push-*` and `.col-md-pull-*` modifier classes.

{% example html %}
<div class="row show-grid">
  <div class="col-md-9 col-md-push-3">.col-md-9 .col-md-push-3</div>
  <div class="col-md-3 col-md-pull-9">.col-md-3 .col-md-pull-9</div>
</div>
{% endexample %}
