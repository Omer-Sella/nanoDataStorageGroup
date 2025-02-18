# Setting up, howto, and a cookbook for new students and staff at our research group https://dnastorage.doc.ic.ac.uk/

1. Getting started with Department of Computing (DoC) GPU machines
DoC has some GPU machines that can be accessed using
```console
ssh  <username>@gpu<NUMBER>.doc.ic.ac.uk
```
Where username is your @ic.ac.uk username, and NUMBER is one of 11-35 numbers.
This assumes you are either connected to a college managed machine, or are within college network. Otherwise you may have to first 
```console
ssh <username>@shell1.doc.ic.uk
```
and only then ssh to a GPU machine. The ull guide is here: https://www.imperial.ac.uk/computing/people/csg/guides/remote-access/ssh/
3. Setting up VS code to work remotely with a DoC machine as the server:
Generally speaking we're following the instructions here: https://code.visualstudio.com/docs/remote/remote-overview

```json
{
    "workbench.colorTheme": "Default High Contrast",
    "dart.flutterSdkPath": "C:\\dev\\flutter",
    "git.openRepositoryInParentFolders": "always",
    "cmake.pinnedCommands": [
        "workbench.action.tasks.configureTaskRunner",
        "workbench.action.tasks.runTask"
    ],
    "cmake.showOptionsMovedNotification": false,
    "explorer.confirmDelete": false,
    "remote.SSH.serverInstallPath": {
        "gpu18.doc.ic.ac.uk": "/homes/<USERNAME>/",
        "gpu35.doc.ic.ac.uk": "/homes/<USERNAME>/",
        "kingfisher.doc.ic.ac.uk": "/homes/<USERNAME>/"
    },
    "remote.SSH.remotePlatform": {
        "gpu18.doc.ic.ac.uk": "linux",
        "gpu35.doc.ic.ac.uk": "linux",
        "kingfisher.doc.ic.ac.uk": "linux"
    },
    "terminal.integrated.enableMultiLinePasteWarning": false
}

```
