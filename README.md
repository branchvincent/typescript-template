# Typescript Template

[![CI](https://github.com/branchvincent/typescript-template/workflows/CI/badge.svg)](https://github.com/branchvincent/typescript-template/actions/workflows/ci.yaml)

A [Copier](https://github.com/copier-org/copier) template for a Typescript package based on my favorite tools.

## Usage

> **Requires**: copier>=6.0.0a6

```sh
copier gh:branchvincent/typescript-template <dest>
```

## Features

- Package manager: [NPM](https://docs.npmjs.com/cli)
- Formatting: [Prettier](https://prettier.io/)
- Testing: [Jest](https://jestjs.io/)
- Linting: [eslint](https://eslint.org/) and [pre-commit](https://pre-commit.com/)
- CI/CD: [Github Actions](https://docs.github.com/en/actions)
  - Automated versioning and release notes via [Conventional Commits](https://www.conventionalcommits.org/)
  - Automated [NPM](https://www.npmjs.com/) upload
  - Automated dependency updates via [Dependabot](https://dependabot.com/)
- Editor integration: [VS Code](https://code.visualstudio.com/)
- Docker support (optional)
