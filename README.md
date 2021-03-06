# Fanaro's Sabaki Theme Collection

> I've written [a companion article](https://fanaro.io/articles/fanaro_sabaki_theme_collection/fanaro_sabaki_theme_collection.html) on my website about the motivation behind this repo. If also features a TLDR version of this documentation.

> This collection is still under construction. And, at any rate, even if you think some of the themes are *bad*, they still serve the purpose of illustrating bad practices &mdash; like too much constrast.

Some more variants and themes for having a more lively Go experience.

Unexpectedly, having a dark goban is actually refreshing. Even though we don't see the lines as easily, it becomes clear that they are not that necessary, as most of the time we place stones relative to one another. Not having to pay that much attention to lines is quite liberating and leaves a cleaner design. However, it is true that neon/oversaturated colors can tire the eyes much more easily; in that case, choose a dark theme with less saturated colors.

> I haven't yet been able to incorporate Sabaki background images into the themes themselves. So far, I've been using the `backgrounds` folder to manage that.

Some of my inspirations are:

- The [Dracula &mdash; or Darcula &mdash;](https://draculatheme.com/) text editing theme.
- The [Color Go Server (CGS)](https://colorgoserver.com/).
    - Maybe someone could directly extract the theme goodness they have there? Maybe directly contact their devs?

## References

- The documentation on how to create and package a theme can be found [here](https://github.com/SabakiHQ/Sabaki/blob/master/docs/guides/create-themes.md).
- Sabaki's CSS styling can be found [here](https://github.com/SabakiHQ/Shudan/tree/master/docs#styling).
- A good example of a theme is the fantastic [Photorealistic theme](https://github.com/SabakiHQ/theme-photorealistic), by [Yichuan Shen](https://github.com/yishn) himself.
- Some advanced CSS for Sabaki can be found [here](https://github.com/SabakiHQ/Sabaki/issues/789). In short:
    ```css
    /* Stones texture */
    .shudan-stone-image.shudan-sign_1 {background-image: url('0.png');}
    .shudan-stone-image.shudan-sign_-1 {background-image: url('1.png');}
    .shudan-stone-image.shudan-sign_-1.shudan-random_1 {background-image: url('2.png');}
    .shudan-stone-image.shudan-sign_-1.shudan-random_2 {background-image: url('3.png');}
    .shudan-stone-image.shudan-sign_-1.shudan-random_3 {background-image: url('4.png');}
    .shudan-stone-image.shudan-sign_-1.shudan-random_4 {background-image: url('5.png');}

    /* 100% stones size */
    .shudan-vertex .shudan-stone {top: 0; left: 0; width: 100%; height: 100%;}

    /* Black lines and disable borders */
    .shudan-goban {--shudan-board-border-width: 0; --shudan-board-foreground-color: #000;}
    .shudan-goban:not(.shudan-coordinates) {padding: 0;}

    /* Board texture */
    .shudan-goban-image {background-image: url('board1.png');}

    /* Disable stones shadow */
    .shudan-vertex:not(.shudan-sign_0) .shudan-shadow {background: none; box-shadow: none;}

    /* Disable bar */
    #bar {visibility: hidden;}
    main {bottom: 0; background: #f0f0f0 url('background1.png') left top;}

    /* Disable goban shadow */
    #goban {box-shadow: none;}

    /* Disable last move marker */
    .shudan-vertex.shudan-marker_point.shudan-sign_1 .shudan-marker {background: none;}
    .shudan-vertex.shudan-marker_point.shudan-sign_-1 .shudan-marker {background: none;}
    
    /* Heat map */
    .shudan-vertex .shudan-heat {transition: opacity 0s, box-shadow 0s;}
    .shudan-vertex.shudan-heat_9 .shudan-heat {background: #009900; box-shadow: 0 0 0 .5em #009900; opacity: 1;}
    .shudan-vertex.shudan-heat_8 .shudan-heat {background: none; box-shadow: none; opacity: 1;}
    .shudan-vertex.shudan-heat_7 .shudan-heat {background: none; box-shadow: none; opacity: 1;}
    .shudan-vertex.shudan-heat_6 .shudan-heat {background: none; box-shadow: none; opacity: 1;}
    .shudan-vertex.shudan-heat_5 .shudan-heat {background: none; box-shadow: none; opacity: 1;}
    .shudan-vertex.shudan-heat_4 .shudan-heat {background: none; box-shadow: none; opacity: 1;}
    .shudan-vertex.shudan-heat_3 .shudan-heat {background: none; box-shadow: none; opacity: 1;}
    .shudan-vertex.shudan-heat_2 .shudan-heat {background: none; box-shadow: none; opacity: 1;}
    .shudan-vertex.shudan-heat_1 .shudan-heat {background: none; box-shadow: none; opacity: 1;}
    .shudan-vertex .shudan-heatlabel {color: white; font-size: .38em; line-height: 1; text-shadow: none; opacity: 1;}
    ```

## Debugging Tips

- Sabaki seems to cache the `.asar` file if it has the same name as the previously loaded one. So, if you make a modification to an element and repackage the whole theme with the same name, the modification might not appear on Sabaki. To avoid this:
    1. Uninstall your current theme.
    1. Close Sabaki.
    1. Reopen Sabaki and reinstall your theme.

## Standard Organization

The organization of my themes reflects the one found in the Photorealistic theme:

- `projects/`: where I store the files intended to be manipulated with GUI image editors, like Adobe Illustrator, GIMP, Inkscape, etc.
- `theme/`: where the theme is.
- `theme/img/`: where you will find the `.png` files with the final form of the assets.
- `theme/style.css`: the CSS styling of the theme.
- `theme/package.json`: the metadata for the theme.
- `<theme>.asar`: the binary with the packaged theme.

## Themes

The screenshots below were taken from the game between [Shibano Toramaru 9p and Hane Naoki 9p, on 2021-04-02](http://go4go.net/go/games/sgfview/96076), on move 80 &mdash; the file can be found inside the [`assets`](assets/) folder.

| Theme                      | Example                                                                   |
| -------------------------- | ------------------------------------------------------------------------- |
| Bluish Purple              | ![bluish-purple](screenshots/bluish_purple.png)                           |
| Bluish Purple Squared      | ![bluish-purple-squared](screenshots/bluish_purple_squared.png)           |
| Bookish                    | ![bookish](screenshots/bookish.png)                                       |
| Bookish No Border          | ![bookish-no-border](screenshots/bookish_no_border.png)                   |
| Subdued Bookish            | ![subdued-bookish](screenshots/subdued_bookish.png          )             |
| Reverse Bookish            | ![reverse-bookish](screenshots/reverse_bookish.png)                       |
| Reverse Bookish Light Grid | ![reverse-bookish-light-grid](screenshots/reverse_bookish_light_grid.png) |
| Fire & Ice                 | ![fire-and-ice](screenshots/fire_and_ice.png)                             |
| Squared                    | ![squared](screenshots/squared.png)                                       |
