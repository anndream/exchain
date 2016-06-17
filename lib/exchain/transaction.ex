defmodule Exchain.Transaction do
  @doc """
  A transaction is a set of updates to be applied atomically to a ledger.
  It has a unique identifier and a signature to validate the source.

    * `txn_type` - The name of the transaction type
    * `message_type` - The transaction class
    * `nonce` - A locally unique identifier
    * `status` - The status of the transaction
    * `deps` - A list of transactions that this transaction is dependent on

  The above description courtesy of [sawtooth-core](https://github.com/hyperledger/sawtooth-core/blob/master/journal/transaction.py#L62-L80).

  _**NOTE: This section is to be determined. It is still unclear what types of
  transactions Exchain will hold.**_
  """

  defstruct [
    data: nil,
    uuid: nil,
    timestamp: nil
  ]

end
