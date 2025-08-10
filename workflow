name: Generate Snake

on:
  schedule:
    - cron: "0 0 * * *"
  workflow_dispatch:

jobs:
  generate:
    runs-on: ubuntu-latest
    steps:
      - name: Generate Snake
        uses: Platane/snk@master
        with:
          github_user_name: tthemehdi
          svg_out_path: dist/github-contribution-grid-snake-dark.svg?palette=github-dark

      - name: Push changes
        uses: stefanzweifel/git-auto-commit-action@v4
        with:
          branch: main
          commit_message: "Update snake.svg"
