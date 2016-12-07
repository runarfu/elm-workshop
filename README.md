# Elm workshop for beginners

## Installing Elm
- With NPM: `$ npm install -g elm`.
- Look at https://guide.elm-lang.org/install.html for alternatives.

## Editor config
- https://guide.elm-lang.org/install.html#configure-your-editor

## Building and running the exercises in this repository
- In the `exercises` directory, run `$ elm package install -y` to install the
requirements in `elm-package.json`.
- The output should look like this:
```bash
Starting downloads...

  ● elm-lang/html 2.0.0
  ● elm-lang/virtual-dom 2.0.2
  ● elm-lang/core 5.0.0

Packages configured successfully!
```
- Run `elm reactor` with `$ elm reactor`, in the `exercises` directory.
- Navigate to [http://localhost:8000/](http://localhost:8000/) in a web browser.
- Navigate to `01.elm` to compile and run that file. (`00.elm` is special, as it
 is written with Norwegian names to emphemphasize which names are optional).
- Whenever you've changed the code in an Elm file, you can recompile and run
the app simply by hitting refresh in the browser. Compiler errors will also be
shown in the browser.

## Working with the exercises
- You're supposed to work your way through the different source files under `exercises`.
- Start with `exercises/01.elm` (as described in the previous paragraphs), then move on to
`exercises/02.elm` and so on.
- Solve the exercises prefixed with `TODO`.
- Try not to look at other files than the one you're working on, as
there will be answers/spoilers to some of the exercises there.

## The `extras` project
This project is an example of one possible way of doing test driven development
in Elm. It has a few extra dependencies which need to be installed, and the tests
can be run with `elm reactor`; simply navigate to `src/tests/Main.elm`.

## The `typesafe-racer` project
This project consists of multiple source files, with `Main.elm` being the entry
point, tying everything together.

The goal of this project is to develop something similar to
[TypeRacer](http://play.typeracer.com/), using techniques learned from working
with the exercises.

## Learning resources
- https://guide.elm-lang.org
- http://faq.elm-community.org/
- http://elm-lang.org/docs/syntax
- http://elm-lang.org/docs/from-javascript
- http://elm-lang.org/examples
- http://package.elm-lang.org/packages/elm-lang/core/latest/
- http://package.elm-lang.org/packages/elm-lang/html/latest/
