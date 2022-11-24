# devs-not-needed
## A CodeSpace template to experiment with GPT Labs' UPG AI-generated software development.

*This currently relies on canary version @gptlabs/upg cli tool to enable usage in codespaces and via SSH*

## Instructions
----
- First, *on your machine*, 
_make sure @gptlabs/upg@canary is installed globally_
    ```
    upg authorize
    ```
- Choose "generate code"

- Then, either open codespace on the browser or SSH into it:
_make sure you have github cli (gh) installed on your machine_
    ```
        gh auth login
        gh codespace ssh
        # choose your codespace
    ```

- On your SSH session or inside a codespace terminal, type again
    ```
    upg authorize
    ```

- Choose "paste code" and paste your generated code
- Just run `upg` and have fun :) 


### All credits to [GPT Labs](https://gptlabs.us/upg)