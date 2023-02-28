#!/bin/bash
ProductName=libhv
Build () 
{
    kas=`git rev-list --tags --max-count=1` \
    && Current_VERSION_STRING=`git describe --tags $kas` \
    && Current_VERSION_NUMBER=`echo ${Current_VERSION##*v}` \
    && echo ddddd$Current_VERSION_NUMBER \
    && git submodule update --init \
    && git add . \
    && git commit -m "v$((${Current_VERSION_NUMBER}+1))" \
    && git push \
    && git tag v$((${Current_VERSION_NUMBER}+1)) \
    && git push --tags \
    && git tag -d v$((${Current_VERSION_NUMBER}-1))
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