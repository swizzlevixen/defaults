# Video Transcoding for Plex

## Install

### Tools

First, install the transcoding tools:

- Update Ruby
- Install Video Transcoding dependencies
- Install [Video Transcoding](https://github.com/donmelton/video_transcoding)
- Install [batch-transcode-video](https://github.com/nwronski/batch-transcode-video)

```
brew install ruby          # Update Ruby
brew install handbrake
brew install ffmpeg
brew install mkvtoolnix
brew install mp4v2
brew install mpv
sudo gem install video_transcoding
```

Download and install [Node.js](https://nodejs.org/en/), then `batch-transcode-video`:

```
npm i batch-transcode-video -g
```

### Bash scripts

Included in this directory are two `bash` scripts, `plexit` and `batch-plexit`. I recommend putting these in `/usr/local/bin/` and running `chmod +x [script]` on each. Alternatively, symlink the file in this repo to `/usr/local/bin/` so that you can update the repo and it will stay in sync.

```
ln -s /path/to/defaults/video-transcode/plexit /usr/local/bin
ln -s /path/to/defaults/video-transcode/batch-plexit /usr/local/bin
```

## Plexit

Plexit starts `transcode-video` with my preferred settings for Plex playback. This is an MKV with all audio tracks subtitles from the original video, and if there is a forced (usually foreign language content) subtitle, it is automatically enabled. It also detelecines or deinterlaces content as appropriate.

I usually prefer MP4/m4v, as it's easier to play and edit, but MKV allows me to more easily include all of the audio and subtitle tracks that I want. This MKV, however, has video encoded as MP4, so if you quickly need to need to convert the file wrapper to MP4 format without transcoding the actual video, use the [`convert-video`](https://github.com/donmelton/video_transcoding#why-convert-video) tool included with `video-transcode`.

For a single file, enter the crop settings and the path to the file. The file is rendered in the current working directory where you run `plexit`.

```bash
plexit [-h] [-i PATH -c t:b:l:r]

where:
    -h | --help   show this help text
    -i | --input  path to the input video file
    -c | --crop   crop setting in pixels - TOP:BOTTOM:LEFT:RIGHT
```

TODO:

- Automatic crop detection, with request for human decision when crop cannot be reliably determined.
- ...or a setting to just use the default and fail when crop cannot be determined.
- Creation of temporary render folder
- Output folder designation

## Batch Plexit

For batch operations, `batch-plexit` launches `batch-video-transcode` with my preferred Plex settings, as above.

`batch-plexit` also forces the video to render with the least-destructive crop settings, so sometimes the output is kind of terrible. It will render into a folder beside the original, with the word ` Plex` appended.

```bash
batch-plexit path/to/video_folder/
```

TODO:
- request for human decision before batch execution when crop cannot be reliably determined.
- check for trailing slash on path, and deal with that appropriately, so that `Plex` does not end up as a subdirectory
