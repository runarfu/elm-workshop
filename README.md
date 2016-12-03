# Elm workshop for beginners

## Installing Elm
- With NPM: `$ npm install -g elm`.
- Look at https://guide.elm-lang.org/install.html for alternatives.

## Editor config
- https://guide.elm-lang.org/install.html#configure-your-editor

## Building and running the exercises in this repository
- In the root directory, run `$ elm package install -y` to install the
requirements in `elm-package.json`.
- The output should look like this:
```bash
Starting downloads...

  ● elm-lang/html 2.0.0
  ● elm-lang/virtual-dom 2.0.2
  ● elm-lang/core 5.0.0

Packages configured successfully!
```
- Run `elm reactor` with `$ elm reactor`, also in the root directory.
- Navigate to [http://localhost:8000/](http://localhost:8000/) in a web browser.
- Navigate to `src/01.elm` to compile and run that file.
- Whenever you've changed the code in an Elm-file, you can recompile and run
the app simply by hitting refresh in the browser. Compiler errors will also be
shown in the browser.

## Working with the exercises
- You're supposed to work your way through the different source files under `src`.
- Start with `src/01.Elm` (as described in the previous paragraphs), then move on to
`src/02.Elm` and so on.
- Solve the exercises prefixed with `TODO`.
- Try not to look at other directories than the one you're working with, as
there will be answers/spoilers to some of the exercises there.

## Learning resources
- https://guide.elm-lang.org
- http://faq.elm-community.org/
- http://elm-lang.org/docs/syntax
- http://elm-lang.org/docs/from-javascript
- http://elm-lang.org/examples
- http://package.elm-lang.org/packages/elm-lang/core/latest/
- http://package.elm-lang.org/packages/elm-lang/html/latest/
