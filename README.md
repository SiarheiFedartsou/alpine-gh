# alpine-gh

Small(based on Alpine) Docker image containing [GitHub command line tool](https://github.com/cli/cli)(`gh`).

Usage example:
```
➜  alpine-gh git:(main) ✗ echo "PR #42 is $(docker run --env GITHUB_TOKEN=... ghcr.io/siarheifedartsou/alpine-gh:gh2.0.0 pr view 42 --repo cli/cli --json state --jq .state)"
PR #42 is MERGED
```