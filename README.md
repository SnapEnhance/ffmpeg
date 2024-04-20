# FFmpegKit

<img src="https://github.com/arthenica/ffmpeg-kit/blob/main/docs/assets/ffmpeg-kit-icon-v9.png" width="240">

`FFmpegKit` is a collection of tools to use `FFmpeg` in `Android`.

It includes scripts to build `FFmpeg` native libraries, a wrapper library to run `FFmpeg`/`FFprobe` commands in
 applications and 8 prebuilt binary packages available at [Github](https://github.com/arthenica/ffmpeg-kit/releases),
 [Maven Central](https://search.maven.org), [CocoaPods](https://cocoapods.org), [pub](https://pub.dev) and [npm](https://www.npmjs.com).

### 1. Build Scripts

Use `android.sh`, `ios.sh`, `linux.sh`, `macos.sh` and `tvos.sh` to build `FFmpegKit` for each native platform.

All scripts support additional options to enable optional libraries and disable platform architectures. See
[Building](https://github.com/arthenica/ffmpeg-kit/wiki/Building) wiki page for the details.

### 2. FFmpegKit Library

`FFmpegKit` is a wrapper library that allows you to easily run `FFmpeg`/`FFprobe` commands in applications. It 
provides additional features on top of `FFmpeg` to enable platform specific resources, control how commands are 
executed and how the results are handled.

`Android` library of `FFmpegKit` has a `Java` API, `Apple` libraries (`iOS`, `macOS`, `tvOS`) have an `Objective-C`
 API, `Flutter` library comes with a `Dart` API, `Linux` library has a `C++` API and `React Native` library provides
a `JavaScript` API with `Typescript` definitions, which are identical in terms of features and capabilities.

### 3. Documentation

A more detailed documentation is available under [Wiki](https://github.com/arthenica/ffmpeg-kit/wiki).

### 4. Test Applications

You can see how `FFmpegKit` is used inside an application by running test applications created under 
[FFmpegKit Test](https://github.com/arthenica/ffmpeg-kit-test) project.

All applications are identical and supports command execution, video encoding, accessing https urls, encoding audio,
burning subtitles, video stabilisation, pipe operations and concurrent command execution.

### 5. License

`FFmpegKit` library alone is licensed under the `LGPL v3.0`.

`FFmpegKit` bundles (`.aar` archives, `frameworks`, `xcframeworks`), which include both  `FFmpegKit` and `FFmpeg`
libraries, are also licensed under the `LGPL v3.0`. However, if the source code is built using the optional
`--enable-gpl` flag or prebuilt binaries with `-gpl` postfix are used, then `FFmpegKit` bundles become subject to the
`GPL v3.0`. Because, `FFmpeg` is licensed under the `GPL v3.0` in those bundles. And that makes the whole bundle
effectively subject to the `GPL v3.0`.

`FFmpegKit` build scripts always configure `FFmpeg` with `--enable-version3` option. And never enable non-free
libraries. Thus, `FFmpeg` libraries created by `FFmpegKit` are licensed under the `LGPL v3.0` by default. Only when
`--enable-gpl` is provided they become subject to `GPL v3.0`. That is how prebuilt binaries with `-gpl` postfix are
compiled.

[fdk-aac](https://github.com/mstorsjo/fdk-aac) is licensed under the "Software License for The Fraunhofer FDK AAC Codec Library for Android" which can be found [here](https://raw.githubusercontent.com/mstorsjo/fdk-aac/master/NOTICE).


Refer to [Licenses](https://github.com/arthenica/ffmpeg-kit/wiki/Licenses) to see the licenses of all libraries.
[Trademark](https://github.com/arthenica/ffmpeg-kit/wiki/Trademark) lists the trademarks used in the `FFmpegKit`
documentation.

### 6. Patents

It is not clearly explained in their documentation, but it is believed that `FFmpeg`, `kvazaar`, `x264` and `x265`
include algorithms which are subject to software patents. If you live in a country where software algorithms are
patentable then you'll probably need to pay royalty fees to patent holders. We are not lawyers though, so we recommend
that you seek legal advice first. See [FFmpeg Patent Mini-FAQ](https://ffmpeg.org/legal.html).

`openh264` clearly states that it uses patented algorithms. Therefore, if you build `ffmpeg-kit` with `openh264` and
distribute that library, then you are subject to pay MPEG LA licensing fees. Refer to
[OpenH264 FAQ](https://www.openh264.org/faq.html) page for the details.

### 7. See Also

- [FFmpeg API Documentation](https://ffmpeg.org/doxygen/4.0/index.html)
- [FFmpeg Wiki](https://trac.ffmpeg.org/wiki/WikiStart)
- [FFmpeg External Library Licenses](https://www.ffmpeg.org/doxygen/4.0/md_LICENSE.html)