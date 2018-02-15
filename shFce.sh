function cmkdir() {
    local MKDIR=$1
    if [ ! -d "$MKDIR" ]; then
        echo -e "-=[ Making dir '${Green}$MKDIR${Color_Off}'"
        mkdir -p "$MKDIR"
    else
        echo -e "-=[ Dir '${Yellow}$MKDIR${Color_Off}' exists"
    fi
}

function xcp() {
    local SRC=$1
    local DST=$2
    echo "SRC=$SRC"
    pushd "$SRC" >/dev/null 2>&1
    echo -e "-=[ B: copy"
    find . -mindepth 1 -type d | cut -c3- | while read JMN; do
        cmkdir "$DST/$JMN"
    done
    find . -type f | cut -c3- | while read JMN; do
        if [ ! -f "$DST/$JMN" -o "x$OVR" = "xy" ]; then
            if [ ! -f "$DST/$JMN" ]; then
                echo "copy $JMN"
                cp "$JMN" "$DST/$JMN"
            else
                echo "overwrite $JMN"
                cp -f "$JMN" "$DST/$JMN"
            fi
        else
            echo "diff $JMN"
            diff -u "$JMN" "$DST/$JMN"
        fi
    done
    echo -e "-=[ E: copy"
    popd >/dev/null 2>&1
}
