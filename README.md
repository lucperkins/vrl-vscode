# Vector Remap Language for VS Code

This extension adds language support for [Vector Remap Language][vrl] (VRL) to [Visual Studio
Code][vscode]. VRL is a domain-specific language (DSL) for handling observability data (logs and
metrics) that's used in conjunction with [Vector], most often in Vector's [`remap`][remap] transform
but also in transforms like [`route`][route] and [`sample`][sample].

## What's included here

At the moment, language support mostly entails syntax highlighting for your `.vrl` files. I've also
included, however, [snippets] for VRL [functions]. If you begin typing the name of a built-in VRL
function, VS Code's Intellisense suggests possible completions.

I do hope to expand the feature set over time, but for now I hope that syntax highlighting and
function name Intellisense will easire and more fun and to write VRL!

## Status

Language support for VRL on VS Code is currently in an early phase. Issues and pull requests are
quite welcome!

[functions]: https://vrl.dev/functions
[remap]: https://vector.dev/docs/reference/configuration/transforms/remap
[route]: https://vector.dev/docs/reference/configuration/transforms/route
[sample]: https://vector.dev/docs/reference/configuration/transforms/sample
[snippets]: ./snippets
[vector]: https://vector.dev
[vrl]: https://vrl.dev
[vscode]: https://code.visualstudio.com