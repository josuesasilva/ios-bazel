# ios-bazel
Demo iOS app with React Native using Bazel as build system.

## Motivation

I was working in an ios app facing a lot of issues related to the native build system, it was hard to add new modules and the build time was terrible.
Then I realized that exists other build system options that could help me to solve these issues.

I did start with [Buck](https://buck.build) but after setup all the project using it, at that time I was not able to compile React Native dependencies. It happens because using a new build system implies that you have to create build rules for all your dependencies. It is really hard to compile react-native dependencies one by one since these dependencies are not just Swift or Obj-C frameworks/libraries.

Finally the Buck docs and community are not so large then I ended up having to try a different option.

After [Buck](https://buck.build) attempt I found [Bazel](https://bazel.build). 
Some important things like community support, docs and a lot of extensions made me give it a chance. But setting up all my project again I had the same issue using [Buck](https://buck.build), build all React Native dependencies.

Thinking how can I overcome this problem without having to maintain build rules to all React Native dependencies, I ended up using pre-compiled static libraries built with Xcode.

Here is the demo app I built using pre-compiled React Native libraries linked to a Swift based app using [Bazel](https://bazel.build) build system.

## Building

```bash
bazel build //app:BazelAppSwift
```

## Running in iOS Simulator

```bash
bazel run //app:BazelAppSwift
```

