---
---
Some introduction

| Breakpoint | Width    | In use |
| ---------- | -------- | ------ |
| xs         | 480px    | Yes    |
| sm         | 768px    | Yes    |
| md         | 960px    | Yes    |
| lg         | 1200px   | Yes    |
| *xl*       | *1440px* | *No*   |
| *xx*       | *1685px* | *No*   |

## Media queries

We should always write our styles as mobile first. Styles should have mobile styles written as default, which should then be overwritten with min-width media queries to enhance the experience on larger screens.

### Min-width
{% highlight css %}
/* Extra small devices (phones, less than 768px) */
/* No media query since this is the default in Bootstrap */

/* Small devices (tablets, 768px and up) */
@media (min-width: @screen-sm-min) { ... }

/* Medium devices (desktops, 992px and up) */
@media (min-width: @screen-md-min) { ... }

/* Large devices (large desktops, 1200px and up) */
@media (min-width: @screen-lg-min) { ... }

/* XL and XX breakpoints are not currently in use */
{% endhighlight %}

### Max-width

We should try to avoid using these, but there are occasions where they are very useful.
{% highlight css %}
/* Extra small devices only (phones, 767px and below) */
@media (max-width: @screen-xs-max) { ... }

/* Small devices (tablets, 959px and below) */
@media (max-width: @screen-sm-max) { ... }

/* Medium devices (desktops, 1199px and below) */
@media (max-width: @screen-md-max) { ... }

/* LG (max), XL and XX breakpoints are not currently in use */
{% endhighlight %}

### Combinations
A combination of min and max width queries are also possible, but again, we should try to avoid these.
{% highlight css %}
/* Extra small devices only (phones, 480px to 767px) */
@media (min-width: @screen-xs-min) and (max-width: @screen-xs-max) { ... }

/* Small devices only (tablets, 768px to 959px) */
@media (min-width: @screen-sm-min) and (max-width: @screen-sm-max) { ... }

/* Medium devices only (desktops, 769px to 1199px) */
@media (min-width: @screen-md-min) and (max-width: @screen-md-max) { ... }

/* LG (max), XL and XX breakpoints are not currently in use */
{% endhighlight %}
