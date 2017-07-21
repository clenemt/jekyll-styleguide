---
---
## Responsive breakpoints

DBK uses 5 range of breakpoints as shown below:

|       Name      | Alias |     Range      |
| --------------- | ----- | -------------- |
| **Extra small** | `xs`  | 0 → 575px      |
| **Small**       | `sm`  | 576px → 767px  |
| **Medium**      | `md`  | 768px → 991px  |
| **Large**       | `lg`  | 992px → 1999px |
| **Extra large** | `xl`  | 1200px → ∞     |

## Media queries

DBK uses the following media queries based on the **previous** breakpoints:

{% highlight scss %}
// Small devices (landscape phones, 576px and up)
@media (min-width: 576px) { ... }

// Medium devices (tablets, 768px and up)
@media (min-width: 768px) { ... }

// Large devices (desktops, 992px and up)
@media (min-width: 992px) { ... }

// Extra large devices (large desktops, 1200px and up)
@media (min-width: 1200px) { ... }
{% endhighlight %}

## Sass helpers

Because we use Sass, you can also use the Sass mixins:

{% highlight scss %}
// Both are similar and will apply to small devices and up
@include media-breakpoint-up(sm) { ... }
@media (min-width: 576px) { ... }

// Again but with large devices and up
@include media-breakpoint-up(lg) { ... }
@media (min-width: 992px) { ... }
{% endhighlight %}
