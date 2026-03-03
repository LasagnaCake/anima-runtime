# Preamble

For the purposes of easier description, the following structure will be used:

`0xHHHH`: Refers to a hex value of `HHHH`.

`<name>`: refers to a label of name `name`.

`[<...>]`: Refers to an optional set of values.

`#[<...>]`: Refers to a given table.

# Basic Instruction Structure

An ART instruction is a 64-bit wide value comprised of the following parts

- `name` (first 32 bits): The instruction's opcode.
- `type` (last 32 bits): The instruction's *description* (i.e. how it is to be executed).

For any described `type`, the structure is packed without padding in-between values, and leftover space is left unused.

If a source ID is required (this will be discussed later), it follows the instruction in accordance to the specified order, and is a 64-bit value.

## Table 1: Data Location

A data location is a, 8-bit value indicating the source (or destination) of a value.

|Name|ID|Description|Source|Requires Source ID?|
|:-:|:-:|:-|:-|:-:|
|INTERNAL|0|Internal value.|ART-defined value.|No|
|CONSTANT|1|Constant value.|Program's constant space.|Yes|
|STACK|2|Stack value.|ART's stack space.|Yes|
|STACK_OFFSET|3|Stack value, going down from the top of the stack.|ARTE's stack space.|Yes|
|GLOBAL|4|Global value.|ART's global space.|Yes|
|EXTERNAL|5|External value.|Implementation-defined source.|Yes|
|TEMPORARY|6|Temporary value.|ART's temporary store.|No|
|REGISTER|7 to 38, inclusive|Register value.|ART's register space.|No|
|MODIFIER:REFERENCE|8th bit|**Modifier**. Designates the source to be passed as reference.|n/a|n/a|
|MODIFIER:MOVE|7th bit|**Modifier**. Designates the source to be moved.|n/a|n/a|

# Instructions

## No-Operation

**Structure:**
´´´
nop {
  name 0x0000
  type (0 or 1)
}
´´´

**Format:** `nop`

**Description:** Does nothing. 0 = does absolutely nothing, 1 = immediately execute next instruction.

## Halt

**Structure:**
´´´
halt {
  name 0x0001
  type {
    mode \#\[Halt: Mode\]
    result #\[Table 1: Data Location\]
  }
}
´´´

**Format:** `halt [<result:id>]`

**Description:** Stops the runtime, and does an action depending on the given `mode`.

### Halt: Mode

|Name|ID|Description|
|:-:|:-:|:-|
|EMPTY|0|Stops the program without a result.|
|WITH_VALUE|1|Stops the program, while giving a result. The source must be specified in `result`.|
|ERROR|1|Stops the program, while giving an error. The source must be specified in `result`.|

## Mode Switching

**Structure:**
´´´
mode {
  name 0x0002
  type {
    context #\[Mode: Context\]
    immediate (1-bit: 0 or 1)
  }
}
´´´

**Format:** `mode`

**Description:** Switches the execution context.

### Mode: Context

See "Structure/Behaviour/Invalid Behaviour" on [environment.md](environment.md).

|Name|ID|Description|
|:-:|:-:|:-|
|STRICT|0|**Strict** context.|
|LOOSE|1|**Loose** context.|
