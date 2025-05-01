# macos-sierra-virtualbox

Scripts for increasing performance when running Linux Mint inside VirtualBox on
macOS Sierra.

## Requirements / Tested on

On the mac:

- macOS Sierra 10.12
- [VirtualBox 6.0.24](https://www.virtualbox.org/wiki/Download_Old_Builds_6_0)
- [VirtualBox Extension Pack 6.0.24](https://download.virtualbox.org/virtualbox/6.0.24/Oracle_VM_VirtualBox_Extension_Pack-6.0.24.vbox-extpack)

In the VM:

- [Linux Mint 22.1 XFCE](https://www.linuxmint.com/edition.php?id=320)

## Install the scripts

Open the `Terminal` app in macOS Sierra, and copy-paste the following command
into it:

```bash
curl -fsSL "https://github.com/hugojosefson/macos-sierra-virtualbox/tarball/main" | tar -xzv --strip-components=1 --wildcards \*/macos-sierra-virtualbox-{optimize,check}
```

(Press `ENTER` after each command)

It will download the scripts.

## Usage

### 0. Know the name of your VM

You need to know the name of the Virtual Machine (VM) that you want to optimize.

In the instructions below, I will use `Hugo Linux` as example name of the VM.
Replace it with your actual VM's name.

You can find yours in the VirtualBox GUI, or by running the following command in
the `Terminal` app:

```bash
VBoxManage list vms
```

### 1. Increase performance in macOS Sierra

In the `Terminal` app, run the following command:

```bash
./macos-sierra-virtualbox-optimize "Hugo Linux"
```

### 2. Check optimizations in macOS Sierra

In the `Terminal` app, run the following command:

```bash
./macos-sierra-virtualbox-check "Hugo Linux"
```

### 3. Optimize Linux Mint guest

1. Start your VM.
2. In the VirtualBox GUI, click **Devices** → **Insert Guest Additions CD
   Image**.
3. Inside the VM, in Linux Mint, open a web browser and go to this page
   (https://github.com/hugojosefson/macos-sierra-virtualbox) and down here again
   :wave:
4. Copy the command below:

```bash
curl -fsSL "https://github.com/hugojosefson/macos-sierra-virtualbox/tarball/main" | tar -xzv --strip-components=1 --wildcards \*/linux-mint-optimize
```

Then open a terminal app in Linux Mint and paste the command into it. Press
`ENTER` so that it downloads the script.

Then run the script:

```bash
./linux-mint-optimize
```

### 4. Possibly reboot

After running the scripts, you may need to reboot your VM and maybe even macOS
for all changes to take effect.

## License

MIT
