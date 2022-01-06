xpqcow2=./xp.qcow2
if [ -f "$xpqcow2" ]; then
    echo 
else 
    wget https://xpqcow2dl.yasir172.repl.co/xp.qcow2
fi
if ! command -v qemu-system-i386 &> /dev/null
then
  install-pkg qemu
fi
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:.  qemu-system-x86_64 -drive file=xp.qcow2 -boot menu=off -m 364