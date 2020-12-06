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

## 10_ERC20_usage
使用OpenZeppelin创建你自己的ERC 20令牌  
继承“标准token”  
添加自定义名称、符号、小数和初始供应  

