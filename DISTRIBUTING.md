# Distributing extend_msgs

## Packaging

### .deb

1. Prerequisities

```bash
# Ubuntu 18.04
sudo apt-get install python-bloom fakeroot
# Ubuntu 20.04
# sudo apt-get install python3-bloom fakeroot debhelper
```

2. Bump version in `package.xml`

3. Create .deb package

```bash
cd extend_msgs
# 18.04 (bionic + melodic)
bloom-generate rosdebian --os-name ubuntu --os-version bionic --ros-distro melodic
# 20.04 (focal + noetic)
# bloom-generate rosdebian --os-name ubuntu --os-version focal --ros-distro noetic

fakeroot debian/rules binary
```

4. Install/remove .deb package

```bash
# install (here 5.3.0 Melodic version)
sudo apt install ./ros-melodic-extend-msgs_5.3.0-0bionic_amd64.deb
# remove
# sudo apt remove ros-melodic-extend-msgs
```

