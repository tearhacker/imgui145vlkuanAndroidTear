start=$(date +%s)
/data/local/tmp/ndk/ndk-build -j14
end=$(date +%s)
diff=$(( end - start ))

echo -e "\e[32m:编译耗时：$diff 秒\e[0m"

echo "启动辅助中"

cp ./libs/arm64-v8a/泪心王者.sh /data/泪心测试/泪心定制知恩推荐.sh
#chmod 777 /data/泪心测试/泪心定制.sh
#echo "2" | /data/泪心测试/泪心定制.sh


#泪心QQ2254013571  有代码修改需求  或者 端口防封教学  等 其他  联系泪心
echo -e "\e[31m调用辅助成功！！！！\e[0m"