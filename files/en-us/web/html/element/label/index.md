---
title: "<label>: The Label element"
slug: Web/HTML/Element/label
page-type: html-element
browser-compat: html.elements.label
---

{{HTMLSidebar}}

* `<label>`
  * == caption for an item | UI
  * uses
    * 💡associate a `<label>` -- with a -- form control (_Example:_ {{htmlelement("input")}} or {{htmlelement("textarea")}})  💡
      * 👀way to associate 👀
        * -- via -- attributes
          ```
          <someFormControl id="idToAssociate" />  
          <label id="idToAssociate" />
          ```
        * -- via -- nesting == implicit
          ``` 
          <label>
            <someFormControl />
          <label />
          ```
      * == "labeled control" 
        * == `label` / -- associated to a -- form control
      * -> label text -- is associated with -- its corresponding text input
        * visually
        * programmatically
          * -> easier for an assistive technology
          * _Example:_ if user is focused | form -> screen reader will read out the label 
        * _Example:_ if a user clicks or touches/taps | label -> browser -- passes the --
          * focus to -- its associated form control
          * hit event | form control
      * 👀MULTIPLE labels -- can be associated with the -- SAME form control 👀
      * form controls / can be associated
        * {{HTMLElement('button')}},
        * {{HTMLElement('input')}} / EXCEPT for `type="hidden"`,
        * {{HTMLElement('meter')}},
        * {{HTMLElement('output')}},
        * {{HTMLElement('progress')}},
        * {{HTMLElement('select')}}
        * {{HTMLElement('textarea')}}

{{EmbedInteractiveExample("pages/tabbed/label.html", "tabbed-shorter")}}

## Attributes

* TODO:
This element includes the [global attributes](/en-US/docs/Web/HTML/Global_attributes).

- `for`

  - : The value of the `for` attribute must be a single [`id`](/en-US/docs/Web/HTML/Global_attributes#id) for a [labelable](/en-US/docs/Web/HTML/Content_categories#labelable) form-related element in the same document as the `<label>` element. So, any given `label` element can be associated with only one form control.

    > **Note:** To programmatically set the `for` attribute, use [`htmlFor`](/en-US/docs/Web/API/HTMLLabelElement/htmlFor).

    The first element in the document with an `id` attribute matching the value of the `for` attribute is the _labeled control_ for this `label` element — if the element with that `id` is actually a [labelable element](https://html.spec.whatwg.org/multipage/forms.html#category-label). If it is _not_ a labelable element, then the `for` attribute has no effect. If there are other elements that also match the `id` value, later in the document, they are not considered.

    Multiple `label` elements can be given the same value for their `for` attribute; doing so causes the associated form control (the form control that `for` value references) to have multiple labels.

    > **Note:** A `<label>` element can have both a `for` attribute and a contained control element, as long as the `for` attribute points to the contained control element.

## Styling with CSS

There are no special styling considerations for `<label>` elements — structurally they are simple inline elements, and so can be styled in much the same way as a {{htmlelement("span")}} or {{htmlelement("a")}} element. You can apply styling to them in any way you want, as long as you don't cause the text to become difficult to read.

## Examples

### Defining an implicit label

```html
<label>Click me <input type="text" /></label>
```

{{EmbedLiveSample('Simple_label_example', '200', '50')}}

### Defining an explicit label with the "for" attribute

```html
<label for="username">Click me to focus on the input field</label>
<input type="text" id="username" />
```

{{EmbedLiveSample('Using_the_for_attribute', '200', '50')}}

## Accessibility concerns

### Interactive content

Don't place interactive elements such as {{HTMLElement("a", "anchors")}} or {{HTMLElement("button", "buttons")}} inside a `label`. Doing so makes it difficult for people to activate the form input associated with the `label`.

**Don't do this:**

```html example-bad
<label for="tac">
  <input id="tac" type="checkbox" name="terms-and-conditions" />
  I agree to the <a href="terms-and-conditions.html">Terms and Conditions</a>
</label>
```

**Prefer this:**

```html example-good
<label for="tac">
  <input id="tac" type="checkbox" name="terms-and-conditions" />
  I agree to the Terms and Conditions
</label>
<p>
  <a href="terms-and-conditions.html">Read our Terms and Conditions</a>
</p>
```

### Headings

Placing [heading elements](/en-US/docs/Web/HTML/Element/Heading_Elements) within a `<label>` interferes with many kinds of assistive technology, because headings are commonly used as [a navigation aid](/en-US/docs/Web/HTML/Element/Heading_Elements#navigation). If the label's text needs to be adjusted visually, use CSS classes applied to the `<label>` element instead.

If a [form](/en-US/docs/Web/HTML/Element/form), or a section of a form needs a title, use the {{HTMLElement("legend")}} element placed within a {{HTMLElement("fieldset")}}.

**Don't do this:**

```html example-bad
<label for="your-name">
  <h3>Your name</h3>
  <input id="your-name" name="your-name" type="text" />
</label>
```

**Prefer this:**

```html example-good
<label class="large-label" for="your-name">
  Your name
  <input id="your-name" name="your-name" type="text" />
</label>
```

### Buttons

An {{HTMLElement("input")}} element with a `type="button"` declaration and a valid `value` attribute does not need a label associated with it. Doing so may actually interfere with how assistive technology parses the button input. The same applies for the {{HTMLElement("button")}} element.

## Technical summary

<table class="properties">
  <tbody>
    <tr>
      <th scope="row">
        <a href="/en-US/docs/Web/HTML/Content_categories"
          >Content categories</a
        >
      </th>
      <td>
        <a href="/en-US/docs/Web/HTML/Content_categories#flow_content"
          >Flow content</a
        >,
        <a href="/en-US/docs/Web/HTML/Content_categories#phrasing_content"
          >phrasing content</a
        >,
        <a
          href="/en-US/docs/Web/HTML/Content_categories#interactive_content"
          >interactive content</a
        >,
        <a
          href="/en-US/docs/Web/HTML/Content_categories#form-associated_content"
          >form-associated element</a
        >, palpable content.
      </td>
    </tr>
    <tr>
      <th scope="row">Permitted content</th>
      <td>
        <a href="/en-US/docs/Web/HTML/Content_categories#phrasing_content"
          >Phrasing content</a
        >, but no descendant <code>label</code> elements. No
        <a href="/en-US/docs/Web/HTML/Content_categories#labelable"
          >labelable</a
        >
        elements other than the labeled control are allowed.
      </td>
    </tr>
    <tr>
      <th scope="row">Tag omission</th>
      <td>{{no_tag_omission}}</td>
    </tr>
    <tr>
      <th scope="row">Permitted parents</th>
      <td>
        Any element that accepts
        <a href="/en-US/docs/Web/HTML/Content_categories#phrasing_content"
          >phrasing content</a
        >.
      </td>
    </tr>
    <tr>
      <th scope="row">Implicit ARIA role</th>
      <td>
        <a href="https://www.w3.org/TR/html-aria/#dfn-no-corresponding-role"
          >No corresponding role</a
        >
      </td>
    </tr>
    <tr>
      <th scope="row">Permitted ARIA roles</th>
      <td>No <code>role</code> permitted</td>
    </tr>
    <tr>
      <th scope="row">DOM interface</th>
      <td>{{domxref("HTMLLabelElement")}}</td>
    </tr>
  </tbody>
</table>

## Specifications

{{Specifications}}

## Browser compatibility

{{Compat}}
