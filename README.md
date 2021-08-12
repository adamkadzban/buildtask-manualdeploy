# buildtask-ps3

Build task (Azure Pipelines) that just runs Powershell using the SDK

## Resources

- <https://docs.microsoft.com/en-us/azure/devops/extend/develop/add-build-task?view=azure-devops>
- <https://docs.microsoft.com/en-us/azure/devops/extend/develop/integrate-build-task?view=azure-devops>
- <https://www.parksq.co.uk/azure-dev-ops/custom-build-tasks>
- <https://docs.microsoft.com/en-us/azure/devops/extend/publish/command-line?view=azure-devops#acquire-a-pat>
- <https://github.com/microsoft/azure-pipelines-task-lib/blob/master/powershell/Docs/README.md>

## Setup

- Mostly followed this, but I skipped TypeScript because this Task is just Powershell: <https://docs.microsoft.com/en-us/azure/devops/extend/develop/add-build-task?view=azure-devops#prerequisites>
- Setting up the PAT was confusing - make sure it's for all organizations. Saved in Secret Server.

## Notes

- No build scripts because no tests or packaging logic. Just the VSIX creation/publish which is here: <https://docs.microsoft.com/en-us/azure/devops/extend/develop/add-build-task?view=azure-devops#step-4-package-your-extension>
- Need to bump versions in both json manifests, which is annoying.
- Have to upload extension, then share it with the Organization, then install it into the Organization, then you can choose it.
- Uses the Task SDK for PowerShell: <https://github.com/microsoft/azure-pipelines-task-lib/blob/master/powershell/Docs/README.md>. Special packaging instructions: <https://github.com/microsoft/azure-pipelines-task-lib/blob/master/powershell/Docs/Consuming.md#package-the-sdk-with-the-task>
- Curiously, this runs with ~0 startup cost, which the other vanilla PS Task seems to have a 15-30 second delay :(
