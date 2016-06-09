# Exchain
## A blockchain + smart contract implementation in Elixir

## Tentative Roadmap

- [ ] Blockchain data structure
    - [ ] Block: Merkle tree root, hash, nonce, timestamp
    - [ ] Transaction
- [ ] Functions for manipulating the blockchain
- [ ] Read/write blocks and transactions from/to disk
- [ ] Practical Byzantine Fault Tolerance (PBFT) consensus algorithm
- [ ] Sync blockchain and transactions data across network
- [ ] Command-line tools

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add exchain to your list of dependencies in `mix.exs`:

        def deps do
          [{:exchain, "~> 0.0.1"}]
        end

  2. Ensure exchain is started before your application:

        def application do
          [applications: [:exchain]]
        end

