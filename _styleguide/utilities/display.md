---
---

## Common `display` values

- `.d-none`
- `.d-inline`
- `.d-inline-block`
- `.d-block`
- `.d-table`
- `.d-table-cell`
- `.d-flex`
- `.d-inline-flex`

Here are some common use cases:

{% example html div=doc-bg %}
<div class="d-inline bg-green">.d-inline</div>
<div class="d-inline-block bg-grey">.d-inline-block</div>
<span class="d-block bg-yellow">.d-block</span>
{% endexample %}

## Responsive classes

Responsive variations `.d-sm-*` also exist for every single utility mentioned above:

{% example_resize html div=doc-bg %}
<div class="d-xs-block d-sm-inline d-lg-flex bg-yellow">.d-xs-block .d-sm-inline .d-lg-flex</div>
{% endexample_resize %}
