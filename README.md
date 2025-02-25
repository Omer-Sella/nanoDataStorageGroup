# Setting up and cookbook for new students and staff at our research group https://dnastorage.doc.ic.ac.uk/

## Getting started with Department of Computing (DoC) GPU machines
DoC has some GPU machines that can be accessed using
```console
ssh  <username>@gpu<NUMBER>.doc.ic.ac.uk
```
Where username is your @ic.ac.uk username, and NUMBER is one of 11-35 numbers.
This assumes you are either connected to a college managed machine, or are within college network. 
Otherwise you may have to first 
```console
ssh <username>@shell1.doc.ic.uk
```
and only then ssh to a GPU machine. The full guide is here: https://www.imperial.ac.uk/computing/people/csg/guides/remote-access/ssh/

## Using the GPU cluster
From gpucluster2.doc.ic.ac.uk you can use
```console
salloc
```
To start an interactive session with an allocated GPU machine.

## Setting up VS code to work remotely with a DoC machine as the server
Generally speaking we're following the instructions here: https://code.visualstudio.com/docs/remote/remote-overview

The exception is that the installation folder for VS code server should be /homes/<USERNAME>/ (homes, plural) rather than /home/<USERNAME>/. Alternatively, you could set it up under /vol/bitbucket/<USERNAME>/ and change the installation folder to be accessible to yourself only (for security reasons).

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
## Nanopore simulators
So far I explored (tried to use) the following:
0. Scrappie - https://github.com/nanoporetech/scrappie would have been nice to get this to work, but the dependencies are virtually impossible to satisfy without collapsing. I had to dig deep into hdf5 and other dependencies like cython, but eventually disbanded it. Jlq17 managed to get it working on Imperial College DoC machines - https://github.com/jasminequah/dna_archival_storage/tree/main so it should be possible.
1. Squigulator https://github.com/hasindu2008/squigulator - to date, this is the only tool that actually worked
2. Seq2squiggle - https://github.com/ZKI-PH-ImageAnalysis/seq2squiggle looks very promising but couldn't get it to work. Specifically have a look here: https://github.com/ZKI-PH-ImageAnalysis/seq2squiggle/issues/13
3. Deep Simulator https://github.com/liyu95/DeepSimulator/tree/master - also looks promising, but couldn't get it to work, although I haven't tried too much of a deep fix, since it couples shell scripts with python 2 pretty tightly.
4. NanoSim-H https://github.com/karel-brinda/NanoSim-H
