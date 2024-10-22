import { Octokit, App } from "octokit";

console.log(`TOKEN: ${process.env.GH_TOKEN}`);

const octokit = new Octokit({
  auth: process.env.GH_TOKEN,
});

octokit.request("POST /repos/{owner}/{repo}/git/refs", {
  owner: "PowerShellPat",
  repo: "gh-foundations-training",
  ref: "refs/heads/sdk-js",
  sha: "1a0567c9e50afd8259121c0f435f3cae88519ac5",
  headers: {
    "X-GitHub-Api-Version": "2022-11-28",
  },
});
