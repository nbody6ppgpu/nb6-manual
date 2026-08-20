# Nb6manual

Canonical source for the NBODY6++GPU LaTeX manual. This GitHub repository
(`origin`, currently `kaiwu-astro/nb6-manual`, will be transferred to
`nbody6ppgpu/nb6-manual`) is the canonical copy of the manual source.

The Overleaf project (`overleaf` remote,
`https://git.overleaf.com/61a0b9dc74d7e9276e99ea39`) is the human editing
interface — edit the manual there via the normal Overleaf web UI.

The reading link for overleaf is https://www.overleaf.com/read/hcmxcyffjkzq#89d2bb

## Sync mechanism

A GitHub Actions workflow (`.github/workflows/overleaf-sync.yml`) keeps
this repo and the Overleaf project in sync in both directions:

- runs every 6 hours on a cron schedule, on `workflow_dispatch`, and on
  every push to `main`
- pulls new commits from Overleaf and merges them into `main`
- pushes new commits from `main` back to Overleaf's `master` branch

## Conflict handling

If the same content was changed on both sides in a way that produces a
merge conflict, the workflow **aborts the merge and fails** — it never
auto-resolves or overwrites either side. To resolve manually:

```
git fetch overleaf
git merge overleaf/master
# resolve conflicts, then:
git push origin main
git push overleaf HEAD:master
```

`sync.sh` in this repo runs the same fetch/merge/push sequence locally and
stops on the first conflict.

## Downstream usage

The NBODY6++GPU code repository consumes this manual as a git submodule
pinned to a specific commit (see that repo's `doc/` directory once the
submodule is wired up).

-- File Francesco is changing: output_unit.tex
-- File Qi is changing: 
