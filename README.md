# GitHub Action
### A sample workflow for learning GitHub Actions
This is an amazing tool for CI CD.


### How Script Injection Can Happen in GitHub Actions:
- Untrusted Input: Using inputs from pull requests, issue comments, or other sources controlled by users without proper sanitization.

- Environment Variables: Injecting untrusted data into environment variables that are later used in a script or command.

- Workflow Commands: GitHub Actions supports a set of workflow commands (like ::set-env or ::add-path) that can be used to dynamically set environment variables, paths, etc. If an attacker can control the data that gets interpreted as a workflow command, they can alter the behavior of the workflow.


### Mitigation Strategies:
- Validate and Sanitize Inputs: Always validate and sanitize user inputs or data fetched from external sources. Be cautious with data from pull requests, especially from forks.

- Use Built-in Token and Permissions: GitHub Actions provides a GITHUB_TOKEN with limited permissions by default. Avoid using high-permission personal access tokens if possible.

- Limit Workflow Permissions: Explicitly set the permissions for the GITHUB_TOKEN in your workflow to only what is necessary for the tasks at hand.

- Avoid Exposing Sensitive Information: Be careful not to echo sensitive information in your logs. Treat all output as potentially visible.

- Use Trusted Actions: Prefer actions that are well-maintained, versioned, and from reputable sources. Pin actions to a full length commit SHA to avoid unexpected changes.

- Code Reviews: Implement a code review process for changes to workflows to catch potentially malicious changes.

- Regular Audits: Regularly audit your workflows and actions for vulnerabilities and keep them updated.

- Limit Runner Exposure: For self-hosted runners, ensure they are used only by trusted repositories as they have more access to your network.

- Be Aware of Workflow Command Injection: GitHub has deprecated some workflow commands (like set-env and add-path) due to security issues. Always use the latest and safest methods for setting environment variables and paths.
