#!/bin/bash
ProductName=libhv-build
Build () 
{   git submodule update --init --recursive \
    && hv_version=`git submodule update --init --remote --quiet && cd libhv && git describe --tags $(git rev-list --tags --max-count=1) && cd ..` \
    && git add . \
    && git commit -m "libhv_version=$hv_version" \
    && git push
}

Check () 
{
    echo "ENV PASS"
}

echo "============================ ${ProductName} ============================"
echo "  1、Cloud Build [-${ProductName}-]"
echo "  2、检查 Build [-${ProductName}-] 所需环境"
echo "======================================================================"
read -p "$(echo -e "请选择[1-2]：")" choose
case $choose in
1)
    Build
    ;;
2)
    Check
    ;;
*)
    echo "输入错误，请重新输入！"
    ;;
esac