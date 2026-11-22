# Changelog

All notable changes to this extension are documented in this file. The format is based on
[Keep a Changelog](https://keepachangelog.com).

## [Unreleased]

### Added

- Syntax highlighting for VRL embedded in YAML, such as Vector configs and Helm values files, under
  `source` and `condition` keys ([#4](https://github.com/lucperkins/vrl-vscode/issues/4)).
- Instructions for building and installing the extension from source
  ([#8](https://github.com/lucperkins/vrl-vscode/issues/8)).

### Changed

- Packaging uses an explicit `files` list, so only the extension's own files are published.
- Updated development dependencies, including `@vscode/vsce` 4, which requires Node.js 22 or later.
