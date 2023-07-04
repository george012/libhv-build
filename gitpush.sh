#!/bin/bash

set -e

RemoteRepoName=libhv
RemoteRepoAddress=github.com/ithewei/libhv

CurrentScriptName=$RemoteRepoName-build

Build () {
    wget --no-check-certificate https://raw.githubusercontent.com/george012/gt_script/master/github_repo_version_scan.sh \
    && wait \
    && chmod a+x ./github_repo_version_scan.sh \
    && wait \
    && remoteRepo_latest_version=`./github_repo_version_scan.sh --get_latest_version $RemoteRepoAddress` \
    && wait \
    && rm -rf ./github_repo_version_scan.sh \
    && cd ./$RemoteRepoName \
    && git checkout tags/$remoteRepo_latest_version \
    && cd ../ \
    && git add . \
    && git commit -m "$RemoteRepoName""_version=$remoteRepo_latest_version" \
    && git push
    
}

Check () {
    echo "ENV PASS"
}

echo "============================ ${CurrentScriptName} ============================"
echo "  1、Cloud Build [-${CurrentScriptName}-]"
echo "  2、检查 Build [-${CurrentScriptName}-] 所需环境"
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