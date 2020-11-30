const lottery_10_users = artifacts.require("lottery_10_users");

module.exports = function(deployer) {
  deployer.deploy(lottery_10_users);
};
