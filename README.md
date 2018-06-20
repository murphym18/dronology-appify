# Dronology as an App

I wrapped running dronology into a single command.
 
This starts the launcher, the ground station and the vaadin ui.

## Usage
To build then run dronology
```bash
dronology
```

To skip the build and just run dronology
```bash 
dronology --no-build
```

## Set up
In ubuntu, make sure the follow programs are installed:
```bash
sudo apt install fish tmux
```

Set the file permissions and copy the scripts in `dronology-appify/bin` to `~/bin`
```bash
mkdir -p ~/bin
cd dronology-appify/bin
chmod +x build-dronology  dronology  ground-station  launcher  vaadin
cp * ~/bin
```

In `~/bin/dronology-vars.fish`, a file you just installed, make sure the variables are correct. Change these values if needed:
```fish
set DRONOLOGY_DIR $HOME/Dronology

set LAUNCHER_DIR          "$DRONOLOGY_DIR/edu.nd.dronology.services.launch"
set GROUND_STATION_DIR    "$DRONOLOGY_DIR/python/edu.nd.dronology.gstation1.python/src"
set VAADIN_DIR            "$DRONOLOGY_DIR/edu.nd.dronology.ui.vaadin"
```

Make sure tmux has mouse support turned on

```bash
echo set -g mouse on > ~/.tmux.conf
```

Now you can run this dronology launcher from the command line. See the usage above.

### Application Setup

Change `Dronology.desktop` so the `Exec` starts your terminal emulator and executes the `dronology` command correctly.
```
Exec=konsole -e fish -c 'dronology'
```

Make a similar change in `Dronology-Skip-Build.desktop`.

Now copy `Dronology.desktop` and `Dronology-Skip-Build.desktop` to `~/.local/share/applications/`

```bash
cd dronology-appify
cp Dronology.desktop Dronology-Skip-Build.desktop ~/.local/share/applications/
```

Now you can start dronology like it's any other application

## Tips
After completing the application setup, if your OS supports it, you should be able to press the super key and type `dronology` to quickly get going.

If your OS doesn't support quick application launching with a keyboard shortcut, consider installing a launcher app like [Ulauncher](https://ulauncher.io/).