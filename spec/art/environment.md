# Preamble

- "Space": A variable-size store of values.
- "Store": A place to store a value.

# Structure

The runtime must provide the following facilities:

One register space, comprised of 32 (thirty-two) register stores.
One stack space.
One global space.
One temporary store.

It must also provide the following execution contexts:

- **Strict Mode:** Crashes on invalid behaviour.
- **Loose Mode:** Invalid behaviour results in `void`.

The default execution context must be **strict**.

## Internal Values

The runtime must provide a series of pre-defined values, associated with a set of IDs. Those being:

|Value|ID|
|:-|:-:|
|`false`|0|
|`true`|1|
|`void`|2|
|`null`|3|
|`nan`|4|

## Behaviour

### Invalid behaviour

The following list contains what the context must consider *invalid behaviour*: Behaviour that does not crash the program on loose context (and ONLY on loose context).

- Type mismatches on comparisons
- Type mismatches on internal calls (expected type vs. actual type)
- Nonexistent external calls
- Nonexistent shared library calls
- Empty stack read/write
- Invalid data location read/write
- Empty constant source read
- Invalid internal read
- Invalid N-ary operation type
- Type mismatches on N-ary operators

For writes in loose context, if the destination does not exist, **it must write to the temporary store**.
