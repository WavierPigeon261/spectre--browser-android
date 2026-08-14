# How to build

Please refer to [official Chromium build documentation](https://www.chromium.org/developers/how-tos/get-the-code) to get started on how to build Chromium.

The Chromium version tag used as base for the patches is available here: [RELEASE](../build/RELEASE); this is corresponding to the git tag for every release.
The GN args used to build Spectre Browser are available here: [Spectre Browser.gn_args](../build/Spectre Browser.gn_args).
The patches are to be applied second the order specified in the `Spectre Browser_patches_list.txt` file (you can use `git am`).

A complete, ready-to-build docker image is also available.
Each release contains the description reference containing the name of the corresponding docker image. All images are in the format:

`uazo/Spectre Browser-build:(VERSION)-(COMMIT)`

You can see all the images released in https://hub.docker.com/r/uazo/Spectre Browser-build/tags

This is the list of commands to perform a build:

Given:
```
SHA=fac696b3a422f196f698e6543913946ddaba1ef3
VERSION=122.0.6261.111
CHVERSION=uazo/Spectre Browser-build:$VERSION-$SHA
CONTAINER=dev1
BDEBUG=false
```

execute:

```
docker create --name $CONTAINER \
    -e "WORKSPACE=/home/lg/working_dir" \
	-e "TARGET_ISDEBUG=$BDEBUG" \
    --entrypoint "tail" $CHVERSION "-f" "/dev/null"
docker start dev1
docker exec -ti dev1 bash
```

and, inside the container:
```
PATH=$WORKSPACE/chromium/src/third_party/llvm-build/Release+Asserts/bin:$WORKSPACE/depot_tools/:/usr/local/go/bin:$WORKSPACE/mtool/bin:$PATH
export HOME=/home/lg/working_dir
cd $HOME
cd chromium/src/
```

please note that these commands are valid for the build of android and linux platforms.

for the windows build you need to configure the cross build mode from linux.
You can use the [script](https://github.com/uazo/Spectre Browser/blob/master/tools/images/win-sdk/prepare.sh) to generate it. 

all release builds are done via the [action available](https://github.com/uazo/Spectre Browser/blob/master/.github/workflows/build_Spectre Browser.yaml) from which you can see the mode I have adopted.

