# Velodrome Mellow collaborative audit details

- Join [Sherlock Discord](https://discord.gg/MABEWyASkp)
- Submit findings using the issue page (label issues as `Medium`, `High`, `Low/Info` or `General Health`)
- [Read for more details](https://docs.sherlock.xyz/audits/watsons)

# Audit scope

```
src/
├── Core.sol
├── libraries/
│   ├── PositionLibrary.sol
│   └── PositionValue.sol
├── modules/
│   └── strategies/
│   │   ├── PulseStrategyModule.sol
│   └── velo/
│       ├── VeloAmmModule.sol
│       └── VeloDepositWithdrawModule.sol
├── oracles/
│   └── VeloOracle.sol
└── utils/
    ├── DefaultAccessControl.sol
    ├── LpWrapper.sol
    ├── VeloDeployFactory.sol
    └── VeloFarm.sol
```
