---
toc: true
---

Icons should be used to quickly and clearly communicate tasks and actions (for example, remove a product from your basket, close an off canvas panel). The icons should never be used as arbitrary decoration, they should only be used to make interaction quick to recognise.

<div markdown="0">
{% for group in site.data.icons %}
<div class="doc-text">
  <h2>{{group.name}}</h2>
  <p>{{group.description}}</p>
</div>

    {% for icons in group.icons %}

    {% assign value = forloop.index | modulo:4 %}

      {% if value == 1 %}
<div class="doc-row doc-form">
      {% endif %}

      <div>
        <div class="doc-icon">
          <div class="doc-icon__img">
            <svg title="{{icons.name}}" role="img" class="icon">
              <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#{{icons.name}}"></use>
            </svg>
          </div>
          <div class="doc-text doc-icon__info">
            <p>{{icons.name}}</p>
            <ul>
              <li><a href="/assets/icons/{{icons.name}}/web/{{icons.name}}.svg">Web</a></li>
              <li><a href="/assets/icons/{{icons.name}}/android.zip">Android</a></li>
              <li><a href="/assets/icons/{{icons.name}}/ios.zip">iOS</a></li>
            </ul>
          </div>
        </div>
      </div>

      {% comment %} This hack should be removed when we introduce a proper grid{% endcomment %}
      {% if value == 0 or forloop.last == true %}
        {% if value == 1 %}
          <div></div><div></div>  <div></div>
        {% elsif value == 2 %}
          <div></div><div></div>
        {% elsif value == 3 %}
          <div></div>
        {% endif %}
      </div>
      {% endif %}

    {% endfor %}

{% endfor %}
</div>

## Sizes
Icons ship in three sizes, `small`, `default`, `large`.

| CSS modifier | Size (`px`)|
| ------------ | ------- |
| `icon--small`| 24 * 24 |
| -            | 48 * 48 |
| `icon--large`| 72 * 72 |

## Usage

### Website
{% example html %}
<!-- Small icon -->
<svg title="icon-chat" role="img" class="icon icon--small">
  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-chat"></use>
</svg>

<!-- Default icon -->
<svg title="icon-chat" role="img" class="icon">
  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-chat"></use>
</svg>

<!-- Large icon -->
<svg title="icon-chat" role="img" class="icon icon--large">
  <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#icon-chat"></use>
</svg>
{% endexample %}

## Applications

| Type       | Name           | Format    | Size (`px`) |
| ---------- | -------------- | --------- | ------- |
| Web        | {icon-name}    | svg       | 48 * 48 |
| iOS        | {icon-name}<br />{icon-name}**@2x**<br />{icon-name}**@3x**    | png<br />png<br />png       | 24 * 24<br />48 * 48<br />72 * 72 |
| Android    | **mdpi**/{icon-name}<br />**hdpi**/{icon-name}<br />**xhdpi**/{icon-name}<br />**xxhdpi**/{icon-name}<br />**xxxhdpi**/{icon-name} | png<br />png<br />png<br />png<br />png   | 24 * 24<br />36 * 36<br />48 * 48<br />72 * 72<br />96 * 96 |


## Adding & Updating icons

When adding or updating an icon we should do the following steps:

- Add the icon to the [Sketch symbol template](/resources).
- Export the files to the correct [application formats](./#applications) listed on this page.
- Optimise the svg file using [svgo](https://www.npmjs.com/package/svgo).
- Add the svg to the spritesheet in (`core-assets/assets/icons/iconsprite.svg`).
- Place the updated spritesheet in (`styleguide/includes/icons.html`).
- Zip the Android and iOS folders and upload all of the files (`styleguide/assets/icons/{icon-name}`).
- Update the spritesheet include in your application.
