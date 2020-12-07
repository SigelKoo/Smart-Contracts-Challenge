# Smart-Contracts-Challenge

## 01_say_hello
在创建时设置问候语并允许所有者（合约创建者）进行修改  
向每个调用sayHello方法的人返回问候语  
将Hello Daddy返回给创建者  

## 02_balance_address_checker
返回合约地址  
返回合约创建者地址  
返回发送人的地址  
返回合约的余额  
返回合约创建者的余额（当你仅为合约创建者时）  
返回发送人的余额  

## 03_basic_random
返回0-99之间的随机数  
计算中的“财务重要性”小于矿工挖掘单一区块得到的  
如何将BLOCKHASH安全地用于随机数  

## 04_lottery_10_users
限制为10个用户  
用户必须支付0.1ETH才能加入以太坊彩票  
同一用户只能加入一次  
合约创建者可以加入以太坊彩票  
第10个用户进入后，选择获胜者  
赢家收走所有的钱  
选出获胜者之后，开始下一轮  
  
错误：require(joinedAlready(msg.sender)) 应为 require(joinedAlready(msg.sender) == false);

## 05_lottery_no_limit
用户支付0.1以太即可加入lottery  
不限用户数量  
同一用户可以多次加入  
合约所有人亦可以加入  
合约所有人决定何时选出赢家  
赢家将得到所有奖金  
选出赢家即可开始新一轮lottery  

## 06_lottery_multiple_winners
对用户无限制  
用户须支付0.1 ETH和并从1-100中挑选一个数字  
合约所有者决定何时生成随机数(1-100)  
选择生成数字的用户获胜  
所有奖励将分配给所有赢家  

## 07_fundraising
有筹款目标的（创立时设定数额）  
筹资有时间限制（创立时设定时间）  
任何人都可以增加任何金额，直到时间结束或目标达到为止  
时间到了，但目标尚未完成，用户可以撤回他们的资金  
当目标达到时，所有者可以取出所有钱  

需要为require写上错误提示，否则报错不知道是什么  

## 08_basic_token
创造时设定代币的初始供应量  
合约创建者获得初始Token  
Token可以转移到任何帐户  
有保护措施以防止溢出  
任何人可检查余额  

## 09_ERC_20_token
基于EIP规范实现ERC 20 token  

## 10_ERC_20_usage
使用OpenZeppelin创建你自己的ERC 20令牌  
继承“标准token”  
添加自定义名称、符号、小数和初始供应  

## 11_ERC_721_usage
使用OpenZeppelin创建自己的ERC 721令牌  
继承“ERC 721 Token”  
添加自定义名称和符号  

## 12_string_converter
创建函数，将字符串转换为byte 32  
为该函数添加可靠性测试  

## 13_route_manager
合约内必须存储公交车站的列表  
每个公共汽车站都有id、名称和坐标(例如：czn 1、PKS Cieszyn、10.123222, 33.212345)  
所有者能够添加新的站点  
合约必须有测试范围  

## 14_testing_route_manager
增加Solidity试验  
添加JavaScript测试  

## 15_shared_wallet
合约有且只有一位所有者  
所有者可以添加和删除管理员  
管理员可以提取所有资金  
合约具有接收转帐的应付款回退功能  

## 16_multisig_wallet
创建一个多签名钱包  
进行转移须有3名管理员签署交易  

## 17_crowdsale
制造可铸造硬币(使用Open Zeppelin)  
创建简单的众包销售(使用Open Zeppelin)  
设定开启和关闭时间
固定费率和钱包地址

## 18_roles_management
创建继承自己的合约(Open Zeppelin)  
合约须有管理员名单  
所有者可以添加/更新/删除管理员  
合约所有者也是管理员  
仅管理员可添加修饰符  

## 19_the_dao_attack
增加非常简化的DAO合约（押金，提款）  
添加攻击者合约  

## 20_lpg_price
利用Oraclize API获取LPG价格  

## 21_random_oraclize
使用Oraclize API获取随机数  

## 22_raffle_oraclize
用户可以参与一次抽奖  
所有者不能参与  
使用Oraclize的RNG选出赢家  

## 23_ipfs_oraclize
向IPF中添加一个简单的json文件  
使用Oraclize读取该文件  
将一个json属性的结果存储在字符串变量中  

## 24_election
每一次选举创建一个合约，为每个候选人提供一个简短的名字和地址  
合约创建者有权对每个地址单独投票  
每个投票参与者可以投票一次  
投票参与者不能为自己投票  

## 25_faucet
添加回退函数以接受付款  
增加退出功能，每人最多能得到1ETH  
使用事件记录两个金额(已支付、转移)  

## 26_swarm_oraclize
将文本文件添加到Swarm public gateway （https://swarm-gateways.net）  
通过Oraclize API读取合约中的文件  

## 27_dapp_pet_shop
创建DApp（https://truffleframework.com/tutorials/pet-shop）  
允许所有者取消收养  
编写取消收养的测试(TDD)  
在SMART合约中添加取消功能  

## 28_infura_deployment
使用Infura添加Ropsten部署设置  

## 29_tic_tac_toe
为2名玩家添加基本的tic tac toe  
3x3 board  
无需人工智能  

## 30_web3_DAO_deploy
从 http://ethereum.org/dao复制DAO代码  
将其更新为Solity0.4.24并编译  
使用 web3 和ethereumjs-tx发送已签名的交易  
使用 Infura将编译好的合同部署到Ropsten网络  
