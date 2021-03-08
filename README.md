[![TimConnelly](https://circleci.com/gh/TimConnelly/CI_embedded.svg?style=shield)](https://circleci.com/gh/TimConnelly/CI_embedded)

A sample project demonstrating how to build an embedded project with Segger Embedded Studio on CircleCI. 

To simplify startup, we use the a [Docker image](https://hub.docker.com/r/vicarahq/segger-embedded-studio/tags?page=1&ordering=last_updated) with SES already installed. Apart from a sample situation, we would want to create our own Docker image for control over packages, versioning, security and caching the image.

We only have one workflow which does a checkout of the code, then builds the repo. 
```yaml
command: /ses/bin/emBuild -config "Debug" -project "ci_test" ci_test.emProject
```
We only build the Debug version in the sample. The Release, or other configurations, could be built by simply changing "Debug" to "Release" in the above command. See the [SES Documentation](https://studio.segger.com/index.htm?https://studio.segger.com/emBuild.htm) for all command line options.

## Next Steps
The next steps we will take after building the repo are:
1. Cache the output
2. Run the tests

## Other Build Environments
Build environments with more restrictive licenses (IAR, Keil) may be more complicated to setup. A quick search of a their websites shows they support CI, but there's no obvious mention of licensing. 

If you're using GCC ARM without an IDE, install your tools in the Docker image change the `command: ` above to your build command. 
