# Keyboard Shortcuts

Reference for keyboard shortcuts on macOS

### Finder

- ⇧⌘. — toggle showing invisible files


### [Screenshots](http://stationinthemetro.com/2015/04/03/mac-screenshot-o-rama)

- ⌘⇧3 — Capture whole screen(s)
- ⌃⌘⇧3 — same, but copy to Clipboard
- ⌘⇧4 — Take a crosshair-bounded screenshot
    - ⇧ — Lock selection area width or height
    - ⌥ — Scale selection area from center
    - ⇧⌥ — Scale selection area from center, locked by width or height
    - hold spacebar — Free-move selection area
    - press spacebar — Capture the window under the cursor when clicked
        - ⌥-click — capture the window without the shadow around it
        - hold ⌘ to target just a sheet attached to a window
- ⌃⌘⇧4 — everything above, but copy to Clipboard

Change the default screenshot save location:

```
$ defaults write com.apple.screencapture location /path/to/Screenshots/
$ killall SystemUIServer
```
    
Change the screenshot capture format from the default PNG. This will accept `(png|jpg|pdf|gif|tiff)`:

```
$ defaults write com.apple.screencapture type jpg
$ killall SystemUIServer
```
    
Change the default screenshot filename prefix:

```
$ defaults write com.apple.screencapture name "OSXDaily"
$ killall SystemUIServer
```

Most of these tips from Useful Mac’s [The Screenshot Spectacular][tss] [⟲][tss-wb].

[tss]: http://usefulmac.com/post/113442672148/the-screenshot-spectacular
[tss-wb]: https://web.archive.org/web/20180630013942/http://usefulmac.com/post/113442672148/the-screenshot-spectacular
