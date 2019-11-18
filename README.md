# Elasticsearch curator

A simple Elasticsearch curator docker image that works with [AWS Elasticsearch Service](https://aws.amazon.com/elasticsearch-service/).

For info and documentation see:

-  [Elasticsearch curator github repo](https://github.com/elastic/curator)
-  [Elasticsearch curator official documentation](https://www.elastic.co/guide/en/elasticsearch/client/curator/current/index.html)


## Helm chart

This integrates seamlessly with the [elasticsearch-curator Helm Chart](https://github.com/helm/charts/tree/master/stable/elasticsearch-curator)
using the following in your `values.yaml`:

```yaml
image:
  repository: codacy/elasticsearch-curator
  tag: 5.8.1

command:
  - /usr/local/bin/curator

```

## What is Codacy?

[Codacy](https://www.codacy.com/) is an Automated Code Review Tool that monitors your technical debt, helps you improve your code quality, teaches best practices to your developers, and helps you save time in Code Reviews.

### Among Codacy’s features

- Identify new Static Analysis issues
- Commit and Pull Request Analysis with GitHub, BitBucket/Stash, GitLab (and also direct git repositories)
- Auto-comments on Commits and Pull Requests
- Integrations with Slack, HipChat, Jira, YouTrack
- Track issues in Code Style, Security, Error Proneness, Performance, Unused Code and other categories

Codacy also helps keep track of Code Coverage, Code Duplication, and Code Complexity.

Codacy supports PHP, Python, Ruby, Java, JavaScript, and Scala, among others.

### Free for Open Source

Codacy is free for Open Source projects.
