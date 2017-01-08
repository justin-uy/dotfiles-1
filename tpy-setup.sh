# Add this to startup for multi-touch
# xsetwacom set 10 Gesture "off"

# sudo apt install git tmux redshift tlp

./symlink-setup.sh
touch ~/.extra

# hack to make stuff run on "startup" THESE ARE IDEMPOTENT commands
echo 'xsetwacom set 10 Gesture "off"' > ~/.extra
echo 'xinput --set-prop "14" "Device Accel Constant Deceleration" .4' > ~/.extra

mkdir projects
mkdir projects/java

mkdir ~/go-workspace
mkdir ~/go-workspace/src

ln -s ~/go-workspace/src ~/projects/go
