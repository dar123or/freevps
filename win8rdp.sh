echo "===================================="
echo "Download windows files"
echo "===================================="
curl -L -o w8x64.img https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.0.4/providers/qemu.box
echo "===================================="
echo "Download ngrok"
echo "===================================="
wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip > /dev/null 2>&1
unzip ngrok-stable-linux-amd64.zip &>/dev/null &
unzip ngrok-stable-linux-amd64.zip1 &>/dev/null &
read -p "Ctrl + V Authtoken: " CRP 
./ngrok authtoken $CRP 
nohup ./ngrok tcp 3388 &>/dev/null &
./ngrok tcp 3388 &>/dev/null &
echo "===================================="
echo Downloading File From akuh.net
echo "===================================="
sudo apt install qemu -y /dev/null 2>&1
echo "===================================="
echo "Wait"
echo "===================================="
echo "===================================="
echo "Starting Windows"
echo RDP Address:
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo UserNmae: Administrator
echo Pass : Thuonghai001
echo "Ctrl+C To Copy"
echo "Wait 1-2 minute to finish bot"
echo "Dont Close This Tab"
echo "Please support akuh.net thank you"
echo "===================================="
echo "===================================="
sudo qemu-system-x86_64 -hda w8x64.img -m 8G -smp cores=4 -net user,hostfwd=tcp::3388-:3389 -net nic -object rng-random,id=rng0,filename=/dev/urandom -device virtio-rng-pci,rng=rng0 -vga vmware -nographic /dev/null 2>&1
sleep 43200

