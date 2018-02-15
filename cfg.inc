BD="$HOME/.vmw"
SD="$BD/home"
INAME=vmw
DNAME=vmw

VOLS=""
VOLS="$VOLS -v $SD:/host"
VOLS="$VOLS -v /tmp/install:/install"

if [ -f "$BD/vols" ]; then
    echo "Vols loaded"
    source "$BD/vols"
fi