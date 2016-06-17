defmodule Exchain.Block do
  @doc """
  The essential data structure of a blockchain is a cryptographic transaction
  log (ledger) created by linking "blocks" of transactions in chronological
  order. Each block refers to the previous block, like a linked list, allowing
  one to traverse the chain and accumulate transactions until the most recent
  snapshot of data is reached at the end.

  ## Block

  A block is composed of a block header and block data.

  The block header contains a unique identifier (nonce), a cryptographic hash
  of the previous block, a timestamp, and a Merkle - or hash - tree of the
  block data.

    * `nonce` - an arbitrary number used to uniquely identify this block
    * `prev_hash` - cryptographic hash of the previous block
    * `timestamp` - 64-bit UNIX epoch timestamp
    * `txn_root` - Merkle tree root of all transactions in this block

  The block data contains 1MB (arbitrary number for now) of transactions which
  have been created within a short span of time. In general, the outputs of
  blockchain transactions are either an unspent transaction output (UTXO) or
  spent transaction output. See `Exchain.Transaction` for more details about
  transactions.
  """

  defstruct [
    header: %{
      nonce: nil,
      prev_hash: nil,
      timestamp: nil,
      txn_root: nil,
    },
    data: []
  ]

  def nonce do
    :crypto.strong_rand_bytes(256)
  end

  def timestamp do
    System.system_time
  end

  def hash(%Exchain.Block{} = block) do
  end

  def merkle_root([ %Exchain.Transaction{} ] = data) do
  end

end
