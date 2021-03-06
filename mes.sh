#!/bin/bash
# author :river
# version:mes V.1.0.1
v_river=`uname -m`
sl_river=("alpine" "kali" "centos" "ubuntu" "arch" "ferado" "opensuse")
sf_river=("arm64" "aarch64" "armhf" )
sn_river=($alpineArm64,$alpineArmhf,$kaliArm64,$kaliArmhf,$centosArm64,$ubuntuArm64,$ubuntuArmhf,$archlinuxArm64,$archlinuxArmhf,$fedoraArm64,$fedoraArmhf,$opensuseArm64)

alpineArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/alpine/3.15/arm64/default/20220211_13%3A01/rootfs.tar.xz" #Address not updated
alpineArmhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/alpine/3.15/armhf/default/20220211_13%3A00/rootfs.tar.xz" #Address not updated
#alpineArmv7="https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.15/releases/armv7/alpine-minirootfs-3.15.0-armv7.tar.gz" #Address not updated
kaliArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/kali/current/arm64/default/20220219_19%3A03/rootfs.tar.xz"
kaliArhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/kali/current/armhf/default/20220219_19%3A03/rootfs.tar.xz"

centosArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/centos/9-Stream/arm64/default/20220211_10%3A39/rootfs.tar.xz" #Address not updated

ubuntuArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/ubuntu/focal/arm64/default/20220211_08%3A22/rootfs.tar.xz" #Address not updated
ubuntuArmhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/ubuntu/focal/armhf/default/20220211_08%3A52/rootfs.tar.xz" #Address not updated
archlinuxArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/archlinux/current/arm64/default/20220212_04%3A18/rootfs.tar.xz" #Address not updated
archlinuxArmhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/archlinux/current/armhf/default/20220212_04%3A18/rootfs.tar.xz" #Address not updated
feradoArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/fedora/35/arm64/default/20220211_20%3A33/rootfs.tar.xz" #Address not updated
feradoArmhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/fedora/35/armhf/default/20220211_20%3A33/rootfs.tar.xz" #Address not updated
opensuseArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/opensuse/15.3/arm64/default/20220212_04%3A21/rootfs.tar.xz" #Address not updated
if [ -z $1 ];
then 
    n=0
    echo "----riverAlert:?????????????????????,??????????????????????????????>><<"
    for x in ${sl_river[@]};
    do
        let "n+=1"
        echo $n:$x
    done
else
    c=0
    echo "----riverAlert:????????????[$1]??????????????????."
    for x in ${sl_river[@]};
    do
        if [ $x = $1 ];
        then
            echo ">>>>riverSuc:[$1]????????????."
            c=1
            d=0
            echo "----riverAlert:?????????????????????CPU??????[$v_river]????????????."
            for x in ${sf_river[@]};
            do  
                 [ $v_river = $x ] && let d=1
            done
            if [ $d = "1" ];
            then   
                echo ">>>>riverSuc:?????????CPU??????[$v_river]??????"
                echo "--*-riverloading:????????????[$1]??????.????????????"
                if [ $1 = "alpine" ];
                then 
                    if [ $v_river = "arm64" ] || [ $v_river="aarch64" ] || [ $v_river ="armhf" ];
                    then
                        if [ $v_river = "arm64"  -o $v_river = "aarch64" ];
                        then
                            `curl -O $alpineArm64`
                        fi
                        if [ $v_river = "armhf" ];
                        then 
                            `curl -O $alpineArmhf`
                        fi
                    else  
                        echo "----riverError:?????????????????????[$v_river]???????????????."
                    fi
                fi

                if [ $1 = "kali" ];
                then 
                    if [ $v_river = "arm64" ] || [ $v_river="aarch64" ] || [ $v_river ="armhf" ];
                    then
                        if [ $v_river = "arm64"  -o $v_river = "aarch64" ];
                        then
                            `curl -O $kaliArm64`
                        fi
                        if [ $v_river = "armhf" ];
                        then 
                            `curl -O $kaliArmhf`
                        fi
                    else  
                        echo "----riverError:?????????????????????[$v_river]???????????????."
                    fi
                fi

                if [ $1 = "centos" ];
                then 
                    if [ $v_river = "arm64" ] || [ $v_river="aarch64" ];
                    then
                        if [ $v_river = "arm64"  -o $v_river = "aarch64" ];
                        then
                            `curl -O $centosArm64`
                        fi
                        echo "----riverError:?????????????????????[$v_river]???????????????."
                    fi
                fi

                if [ $1 = "ubuntu" ];
                then 
                    if [ $v_river = "arm64" ] || [ $v_river="aarch64" ] || [ $v_river ="armhf" ];
                    then
                        if [ $v_river = "arm64"  -o $v_river = "aarch64" ];
                        then
                            `curl -O $ubuntuArm64`
                        fi
                        if [ $v_river = "armhf" ];
                        then 
                            `curl -O $ubuntuArmhf`
                        fi
                    else  
                        echo "----riverError:?????????????????????[$v_river]???????????????."
                    fi
                fi

                if [ $1 = "arch" ];
                then 
                    if [ $v_river = "arm64" ] || [ $v_river="aarch64" ] || [ $v_river ="armhf" ];
                    then
                        if [ $v_river = "arm64"  -o $v_river = "aarch64" ];
                        then
                            `curl -O $archlinuxArm64`
                        fi
                        if [ $v_river = "armhf" ];
                        then 
                            `curl -O $archlinuxArmhf`
                        fi
                    else  
                        echo "----riverError:?????????????????????[$v_river]???????????????."
                    fi
                fi

                if [ $1 = "ferado" ];
                then 
                    if [ $v_river = "arm64" ] || [ $v_river="aarch64" ] || [ $v_river ="armhf" ];
                    then
                        if [ $v_river = "arm64"  -o $v_river = "aarch64" ];
                        then
                            `curl -O $feradoArm64`
                        fi
                        if [ $v_river = "armhf" ];
                        then 
                            `curl -O $feradoArmhf`
                        fi
                    else  
                        echo "----riverError:?????????????????????[$v_river]???????????????."
                    fi
                fi

                if [ $1 = "opensuse" ];
                then 
                    if [ $v_river = "arm64" ] || [ $v_river="aarch64" ] ;
                    then
                        if [ $v_river = "arm64"  -o $v_river = "aarch64" ];
                        then
                            `curl -O $opensuseArm64`
                        fi
                    else  
                        echo "----riverError:?????????????????????[$v_river]???????????????."
                    fi
                fi


            else    
                echo "----riverError:???????????????????????????."
            fi
            
        fi
    done
    if [ $c != "1" ];
    then 
        echo "----riverAlert:???????????????????????????????????????????????????.?????????????????????."
    fi
    f_river="rootfs.tar.xz"
    if [ -e $f_river ];
    then
        echo "----riverSuc:[$1]????????????."
        echo "----ruverLoading:??????[$1]?????????..."
        `mkdir $1`
        `tar -xf rootfs.tar.xz -C $1`
        d_river=$1
        if [ -e $1 ];
        then   
            echo "----riverSuc:[$1]????????????..."
            echo "----riverClean:???????????????..."
            `rm -rf $f_river`
            echo "----????????????[$1]??????..."
            r=`cat $1/etc/passwd | grep  "root:/bin/"` 
            h="/bin/${r##*/}"
            echo "----riverSet:??????????????????[.bashrc]..."
            if [ -e ".bashrc" ];
            then
                echo "----riverSet:??????[.bashrc]"
                `touch .bashrc`
            fi
             echo "unset LD_PRELOAD;alias $1='proot --link2symlink -0 -r $1 -b /dev -b /proc -b $1:/root:/dev/shm -w /root /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/sbin:/usr/sbin TERM=$TERM LANG=C.UTF-8 $h --login'">>.bashrc
             echo "----[$1]????????????????????????????????????termunx?????????: $1  ???????????????!"
        fi
    fi

fi
