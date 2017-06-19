---
toc: true
---

## Examples

We use six predefined button styles, each serving its own semantic purpose.

{% example html %}
<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
<button class="dbk-btn dbk-btn_primary">Primary</button>

<!-- Secondary, black button -->
<button class="dbk-btn dbk-btn_secondary">Secondary</button>

<!-- Indicates a tertiary action, whatever it is -->
<button class="dbk-btn dbk-btn_tertiary">Tertiary</button>
{% endexample %}

## Transparent buttons

In need of a button, but not the hefty background colors they bring? Replace the default modifier classes with the `.dbk-btn_transparent-*`.

{% example html %}
<button class="dbk-btn dbk-btn_transparent-light">Light</button>
<button class="dbk-btn dbk-btn_transparent-dark">Dark</button>
{% endexample %}

## Sizes

Fancy smaller buttons? Add `.dbk-btn_small`.

{% example html %}
<button class="dbk-btn dbk-btn_tertiary dbk-btn_small">Small button</button>
<button class="dbk-btn dbk-btn_secondary dbk-btn_small">Small button</button>
{% endexample %}

Create block level buttons—those that span the full width of a parent—by adding `.dbk-btn_justified`.

{% example html %}
<button class="dbk-btn dbk-btn_primary dbk-btn_justified">Block level button</button>
<button class="dbk-btn dbk-btn_secondary dbk-btn_justified">Block level button</button>
{% endexample %}

## Active state

Buttons will appear pressed (with a darker background, darker border, and inset shadow) when active. **There's no need to add a class to `<button>`s as they use a pseudo-class**. However, you can still force the same active appearance with `.dbk-hover` should you need to replicate the state programmatically.

{% example html %}
<button class="dbk-btn dbk-btn_primary dbk-hover">Primary</button>
{% endexample %}

## Disabled state

Make buttons look inactive by adding the `.dbk-btn_disabled` class.

{% example html %}
<button class="dbk-btn dbk-btn_primary dbk-btn_disabled" disabled>Primary button</button>
{% endexample %}
