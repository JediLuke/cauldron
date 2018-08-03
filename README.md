# CauldronUmbrella

Cauldron is a Elixir framework for rendering client-side web-applications,
with the following features:

* Browser-side scripting via [elixir -> javascript AST-AST translation](https://github.com/elixirscript/elixirscript)
* Component based virtual-DOM utilizes passing state as props (same model as react)
* Global state only mutable via pre-defined reducer functions (same model as redux/mobx)
* Fast re-rendering via the use of turbolinks
* Server-side rendering, designed to use with Phoenix
* Real-time communication via websockets, out-of-the-box

all without the need to touch any Javascript - coupled with phoenix,
this allows you to code front and back end parts of a modern web application in Elixir.

## This project

This project is an Umbrella project containing 2 apps

* Cauldron - the framework itself
* ArtGallery - a sample web application for an art gallery

The only reason ArtGallery is here is to be used as an example on how to
use Cauldron.

### Starting the project

``` $shell
cd apps/art_gallery
mix phx.server
```

## Current status: alpha

This project is under active development, please get in touch or get involved. Pull-requests welcome!

## README for Cauldron

[README.md for Cauldron](./apps/cauldron/README.md)