## Github Action: on pr open

This GitHub Action triggers when a pull request is opened, reopened, or synchronized, and if the pull request is targeting either the `dev` or `main` branches.

The action runs two jobs:

### `ansible-lint` job
This job uses the `.github/workflows/on_wfc_ansible_lint.yml` workflow to run `ansible-lint` to check the validity of Ansible files in the repository. This job inherits the secrets from the parent workflow.

### `tffmt` job
This job uses the `.github/workflows/on_wfc_terraform_fmt.yml` workflow to run `tffmt` to format Terraform files in the repository. This job also inherits the secrets from the parent workflow.

Both jobs will run in parallel when triggered by a pull request that meets the specified criteria.

For more information on the `pull_request` event and how to configure it, see the [GitHub documentation](https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#pull_request).
