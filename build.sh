#!/bin/bash
ProductName=libhv
Build () 
{
    current_beijign_time=$(echo $(TZ=UTC-8 date +%Y%m%d""%H%M%S)) \
    && git submodule update --init \
    && git add . \
    && git commit -m "build at ${current_beijign_time}" \
    && git push \
    && git tag build_${current_beijign_time} \
    && git push --tags
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