# Bracket Validator
###### November 13 2018

You're working with an intern that keeps coming to you with JavaScript code that won't run because the braces, brackets, and parentheses are off. To save you both some time, you decide to write a braces/brackets/parentheses validator.

Let's say:
* "(", "{", "[" are called _openers_.
* ")", "}", "]" are called _closers_.

**Write an efficient method that tells us whether or not an input string's openers and closers are properly nested.**

Examples:
* "{ [ ] ( ) }" should return `true`
* "{ [ ( ] ) }" should return `false`
* "{ [ }" should return `false`

---

Notes:
* Simply making sure each opener has a corresponding closer is not enough—we must also confirm that they are correctly ordered.
* For example, "{ [ ( ] ) }" should return `false`, even though each opener can be matched to a closer.
* One iteration is all we need!
