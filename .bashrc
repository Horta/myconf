if [ -f /nfs/research1/stegle/system/.bashrc ]; then
    . /nfs/research1/stegle/system/.bashrc
fi

export LD_LIBRARY_PATH="/homes/horta/lib:$LD_LIBRARY_PATH"
export PATH="/homes/horta/bin:$PATH"

if shopt -q login_shell
then
    conda activate default
    $SYSTEM/linuxbrew2/bin/zsh
    exit
fi
