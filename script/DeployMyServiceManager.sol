function setUp() public virtual {
    // Use the same private key for both deployer and operator for testing
    uint256 privateKey = vm.envUint("PRIVATE_KEY");
    deployer = vm.rememberKey(privateKey);
    operator = vm.rememberKey(privateKey); // Use same key for operator
    vm.label(deployer, "Deployer");
    vm.label(operator, "Operator");
} 