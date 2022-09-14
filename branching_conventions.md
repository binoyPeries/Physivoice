#### For every new feature and bug fix you must create a new branch from the latest version of the **_`master`_** branch

### Naming Convension
If the branch is for a new feature, the branch should start with `feature/`, similarly for a bug it should start with  `bug/`.

#### Feature Branches
- If the feature branch only contains a UI change add the part **_ui_**, then the name should look like **`feature/ui`**, similarly if it contains only an integration from the backend use the word **_integration_**.
- If the branch contains both the UI and the integration no need to add anything after **`feature/`**.
- Finally mention the feature you are working on, and if you have to use more than one word, separate each word with a dash **`-`** (ex: _user-login_).

  **Example**: Assume you are working on user login UI, then the branch name would be: `feature/ui/user-login`

#### Bug Fixing Branches

- Mention the bug you are fixing in few words, use dashes `-` to separate each word.

   **Example**: `bug/user-login-pw-visibility`
