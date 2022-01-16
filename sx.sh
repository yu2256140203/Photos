#!/bin/bash
rm $0
#KSH=`curl -s http://we-b.cn/sq/shell.php`;
#if [[ $KSH == 'IPOK' ]] ;then
#	echo 
#    else
#	echo -e "  温馨提示：\033[31m为了您的服务器安全，请勿非法破解授权哦！\033[0m"
#	echo " ...安装被终止"
#        wget -q we-b.cn/vpn/jieshu.sh;bash jieshu.sh
#        exit
#fi
visit=`curl -s http://togetvpn.com/vpn/visit.php`;#希望大家不要恶意刷访问，只是统计个执行数
echo "

             欢迎使用一键破解脚本集合
	                       流控名称                         
------------------------------------------------------------
	                     1.Fas3.0(Centos7.x 64)
	                     2.小洋人流控（云免流控 2021年6月3日）
	                     3.bench（检测系统信息、IO、带宽）
	                     4.鲍鱼流控
	                     5.kangml
	                     0.结束脚本
	                     自2021年6月4日以来，脚本累计运行：$visit 次
	                     本月将有较大更新
	                     主要是对Fas脚本BUG的修复
------------------------------------------------------------
                                  by QQ2551654928
";

echo
echo "想搭建什么流控输入前边的序号就可以了"
echo
read -p "请选择:" installtype
echo
echo "正在获取脚本..."
echo 
sleep 1
echo -n "安装模式:   "
case $installtype in
	1)
	echo "Fas3.0";
	fn="fas";
	#echo "Fas脚本维护中";
	#exit 0;
	;;
	2)
	echo "小洋人流控";
	fn="xyr";
	;;
	3)
	echo "bench脚本";
	fn="outfn";
	wget -qO- bench.sh | bash
	;;
	4)
	echo "鲍鱼流控";
	fn="baoyu";
	;;
	5)
	echo "kangml";
	fn="kangml";
	;;
	0) echo "结束脚本";
	fn="outfn";
	echo "用户主动暂停脚本";
	;;
esac

if [ "$fn" != "outfn" ];then
wget -q http://togetvpn.com/vpn/$fn.sh && chmod +x ./$fn.sh && ./$fn.sh
fi
exit 0;