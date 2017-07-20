---
toc: true
---

Icons should be used to quickly and clearly communicate tasks and actions (for example, remove a product from your basket, close an off canvas panel). The icons should never be used as arbitrary decoration, they should only be used to make interaction quick to recognise.

## Sizes

| Type       | Name           | Format    | Size (`px`) |
| ---------- | -------------- | --------- | ------- |
| Web        | {icon-name}    | svg       | 48 * 48 |
| iOS        | {icon-name}<br />{icon-name}**@2x**<br />{icon-name}**@3x**    | png<br />png<br />png       | 24 * 24<br />48 * 48<br />72 * 72 |
| Android    | **mdpi**/{icon-name}<br />**hdpi**/{icon-name}<br />**xhdpi**/{icon-name}<br />**xxhdpi**/{icon-name}<br />**xxxhdpi**/{icon-name} | png<br />png<br />png<br />png<br />png   | 24 * 24<br />36 * 36<br />48 * 48<br />72 * 72<br />96 * 96 |

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
            <img src="/assets/icons/{{icons.name}}/web/{{icons.name}}.svg" alt="{{icons.name}}" />
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
