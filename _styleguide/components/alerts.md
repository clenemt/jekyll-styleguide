---
toc: true
---

## Examples

Alerts are available for any length of text. For proper styling, use one of the four **required** contextual classes (e.g., `.dbk-alert_success`).

{% example_resize html %}
<div class="dbk-alert dbk-alert_success" role="alert">
  <strong>Well done!</strong> You successfully read this important alert message.
</div>
<div class="dbk-alert dbk-alert_info" role="alert">
  <strong>Heads up!</strong> This alert needs your attention, but it's not super important.
</div>
<div class="dbk-alert dbk-alert_warning" role="alert">
  <strong>Warning!</strong> Better check yourself, you're not looking too good.
</div>
<div class="dbk-alert dbk-alert_danger" role="alert">
  <strong>Oh snap!</strong> Change a few things up and try submitting again.
</div>
{% endexample_resize %}

## Sizes

Fancy smaller alerts? Add `.dbk-alert_small`.

{% example html %}
<div class="dbk-alert dbk-alert_success dbk-alert_small" role="alert">
  <strong>Well done!</strong> This is a harder to read alert.
</div>
{% endexample %}

## Icons

Add an icon by adding a `<span>`.

{% example html %}
<div class="dbk-alert dbk-alert_warning" role="alert">
  <span class="dbk-icon dbk-icon-r_warning"></span>
  <strong>Warning!</strong> This is a warning alert with a fancy icon.
</div>
{% endexample %}
