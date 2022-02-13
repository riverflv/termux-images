#!/bin/bash
# author :river
# version:mes V.1.0.1
v_river=`uname -m`
sl_river=("alpine" "kali" "centos" "ubuntu" "arch" "ferado" "opensuse")
sf_river=("arm64" "aarch64" "armhf" )
sn_river=($alpineArm64,$alpineArmhf,$kaliArm64,$kaliArmhf,$centosArm64,$ubuntuArm64,$ubuntuArmhf,$archlinuxArm64,$archlinuxArmhf,$fedoraArm64,$fedoraArmhf,$opensuseArm64)

alpineArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/alpine/3.15/arm64/default/20220211_13%3A01/rootfs.tar.xz"
alpineArmhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/alpine/3.15/armhf/default/20220211_13%3A00/rootfs.tar.xz"
#alpineArmv7="https://mirrors.tuna.tsinghua.edu.cn/alpine/v3.15/releases/armv7/alpine-minirootfs-3.15.0-armv7.tar.gz"
kaliArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/kali/current/arm64/default/20220211_18%3A47/rootfs.tar.xz"
kaliArhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/kali/current/armhf/default/20220211_18%3A47/rootfs.tar.xz"

centosArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/centos/9-Stream/arm64/default/20220211_10%3A39/rootfs.tar.xz"

ubuntuArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/ubuntu/focal/arm64/default/20220211_08%3A22/rootfs.tar.xz"
ubuntuArmhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/ubuntu/focal/armhf/default/20220211_08%3A52/rootfs.tar.xz"
archlinuxArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/archlinux/current/arm64/default/20220212_04%3A18/rootfs.tar.xz"
archlinuxArmhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/archlinux/current/armhf/default/20220212_04%3A18/rootfs.tar.xz"
feradoArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/fedora/35/arm64/default/20220211_20%3A33/rootfs.tar.xz"
feradoArmhf="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/fedora/35/armhf/default/20220211_20%3A33/rootfs.tar.xz"
opensuseArm64="https://mirrors.tuna.tsinghua.edu.cn/lxc-images/images/opensuse/15.3/arm64/default/20220212_04%3A21/rootfs.tar.xz"
if [ -z $1 ];
then 
    n=0
    echo "----riverAlert:目前支持的系统,请直接输入小写系统名>><<"
    for x in ${sl_river[@]};
    do
        let "n+=1"
        echo $n:$x
    done
else
    c=0
    echo "----riverAlert:正在检测[$1]是否支持安装."
    for x in ${sl_river[@]};
    do
        if [ $x = $1 ];
        then
            echo ">>>>riverSuc:[$1]支持安装."
            c=1
            d=0
            echo "----riverAlert:正在检测你设备CPU架构[$v_river]是否支持."
            for x in ${sf_river[@]};
            do  
                 [ $v_river = $x ] && let d=1
            done
            if [ $d = "1" ];
            then   
                echo ">>>>riverSuc:已适配CPU架构[$v_river]系统"
                echo "--*-riverloading:正在下载[$1]系统.请稍后。"
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
                        echo "----riverError:该系统未适配你[$v_river]架构的系统."
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
                        echo "----riverError:该系统未适配你[$v_river]架构的系统."
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
                        echo "----riverError:该系统未适配你[$v_river]架构的系统."
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
                        echo "----riverError:该系统未适配你[$v_river]架构的系统."
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
                        echo "----riverError:该系统未适配你[$v_river]架构的系统."
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
                        echo "----riverError:该系统未适配你[$v_river]架构的系统."
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
                        echo "----riverError:该系统未适配你[$v_river]架构的系统."
                    fi
                fi


            else    
                echo "----riverError:暂未适配改手机架构."
            fi
            
        fi
    done
    if [ $c != "1" ];
    then 
        echo "----riverAlert:未收录该系统记录或者系统名输入错误.请重新选择系统."
    fi
    f_river="rootfs.tar.xz"
    if [ -e $f_river ];
    then
        echo "----riverSuc:[$1]下载完成."
        echo "----ruverLoading:解压[$1]系统中..."
        `mkdir $1`
        `tar -xf rootfs.tar.xz -C $1`
        d_river=$1
        if [ -e $1 ];
        then   
            echo "----riverSuc:[$1]解压完成..."
            echo "----riverClean:清除压缩包..."
            `rm -rf $f_river`
            echo "----正在设置[$1]启动..."
            r=`cat $1/etc/passwd | grep  "root:/bin/"` 
            h="/bin/${r##*/}"
            echo "----riverSet:检测是否存在[.bashrc]..."
            if [ -e ".bashrc" ];
            then
                echo "----riverSet:添加[.bashrc]"
                `touch .bashrc`
            fi
             echo "unset LD_PRELOAD;alias $1='proot --link2symlink -0 -r $1 -b /dev -b /proc -b $1:/root:/dev/shm -w /root /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/sbin:/usr/sbin TERM=$TERM LANG=C.UTF-8 $h --login'">>.bashrc
             echo "----[$1]系统部署成功，请重新进入termunx，输入: $1  已进入系统!"
        fi
    fi

fi
