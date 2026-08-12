import [
	"bits/docs/breve/main"
	"bits/docs/breve/eili"
	"bits/docs/breve/lili"
	"bits/docs/breve/expr-table"
	"bits/docs/breve/expr-item"
	"bits/text/b"
	"bits/text/i"
	"bits/p"
	"bits/link"
	"bits/docs/note"
	"bits/docs/warn"
	"bits/docs/caution"
	"bits/docs/title"
	"bits/docs/section"
	"bits/docs/topic"
	"bits/code/block"
	"bits/code/inline"
	"bits/code/attr"
	"bits/code/fn"
	"bits/code/kw"
	"bits/code/name"
	"bits/code/num"
	"bits/code/op"
	"bits/code/token"
	"bits/code/tab"
	"bits/code/str"
	"bits/code/sqstr"
	"bits/code/dqstr"
	"bits/code/expr"
	"bits/code/memo"
	"bits/code/call"
	"bits/docs/quiz"
]

html `
<<main title="Expressions">>
<<section>>
	<<title>>Expressions<</title>>
	<<p>>
		Expressions are the building blocks of your code. These can be
		the following:
	<</p>>
	<<p>>
		<<b>>Unary Expressions<</b>>: Self-explanatory, only has
		one argument.
	<</p>>
	<<p>>
		<<b>>Binary Expressions<</b>>: Comprised of a
		<<i>>left-hand side<</i>> and a <<i>>right-hand side<</i>>.
	<</p>>
	<<p>>
		<<b>>Ternary Expressions<</b>>: Has three arguments.
	<</p>>
	<<p>>
		<<b>>Variadic Expressions<</b>>: Has <<b>>two or more<</b>>
		arguments.
	<</p>>
	<<p>>
		<<b>>Block Expressions<</b>>: Surrounded in curly brackets,
		contains <<b>>zero or more<</b>> expressions.
	<</p>>
	<<p>>
		<<b>>Declarations<</b>>: Comes in many shapes and sizes,
		those being:
	<</p>>
	<ul>
		<<lili to="{{@page:breve/v1/basic/variables}}" text="Variable declarations"/>>
		<<lili to="{{@page:breve/v1/basic/functions}}" text="Function declarations"/>>
		<<eili text="Namespace declarations"/>>
		<<eili text="Structure declarations"/>>
		<<eili text="Enumeration declarations"/>>
		<<eili text="Type extensions declarations"/>>
		<<eili text="Property declarations"/>>
		<<eili text="Trait declarations"/>>
	</ul>
	<<p>>As for each class of operation:<</p>>
	<<note>>
        <<p>>Everything within grayed-out brackets (<<code-inline>><<memo text="[]"/>><</code-inline>>) is optional, unless specified.<</p>>
	<</note>>
	<<topic>>Arithmetic<</topic>>
	<<expr-table>>
		<<expr-item name="Addition" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="+"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Subtraction" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="-"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Multiplier" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="*"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Division" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="/"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Modulo (Remainder)" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="%"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Exponentiation" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<kw text="pow"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Arc tangent of X over Y (lhs over rhs)" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<kw text="atan2"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Inversion" type="Unary">>
			<<code-inline>>
				<<op text="-"/>><<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Positration" type="Unary">>
			<<code-inline>>
				<<op text="+"/>><<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Pre-Incrementation" type="Unary">>
			<<code-inline>>
				<<op text="++"/>><<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Pre-Decrementation" type="Unary">>
			<<code-inline>>
				<<op text="--"/>><<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Post-Incrementation" type="Unary">>
			<<code-inline>>
				<<expr text="expr"/>><<op text="++"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Post-Decrementation" type="Unary">>
			<<code-inline>>
				<<expr text="expr"/>><<op text="--"/>>
			<</code-inline>>
		<</expr-item>>
	<</expr-table>>
	<<topic>>Logic<</topic>>
	<<expr-table>>
		<<expr-item name="Logic AND" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="&&"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Logic OR" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="||"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Logic XOR" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="^^"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Logic NOT" type="Unary">>
			<<code-inline>>
				<<op text="!"/>><<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
	<</expr-table>>
	<<topic>>Bitwise<</topic>>
	<<expr-table>>
		<<expr-item name="Bitwise AND" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="&"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Bitwise OR" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="|"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Bitwise XOR" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="^"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Bitwise NOT" type="Unary">>
			<<code-inline>>
				<<op text="~"/>><<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
	<</expr-table>>
	<<topic>>Comparison<</topic>>
	<<expr-table>>
		<<expr-item name="Equal" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="=="/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Not-Equal" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="!="/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Less-Than" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="&lt;"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Less-or-Equal" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="&lt;="/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Greater-Than" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="&gt;"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Greater-or-Equal" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="&gt;="/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Order" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="&lt;=&gt;"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
	<</expr-table>>
	<<topic>>Declarations<</topic>>
	<<expr-table>>
		<<expr-item name="Variable" type="Declaration">>
			<<code-inline>>
				<<expr text="name"/>>
				<<memo text="["/>><<op text=":"/>>
				<<expr text="type"/>>
				<<memo text="["/>>
				<<op text="="/>><<expr text="value"/>><<memo text="]]"/>>
				<<memo text="or"/>>
				<<memo text="["/>><<op text=":="/>>
				<<expr text="value"/>><<memo text="]"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Function" type="Declaration">>
			<<code-inline>>
				<<expr text="name"/>>
				<<op text=":: ("/>><<expr text="arg-decl"/>><<memo text="["/>><<op text=","/>>
				<<memo text="...]"/>><<op text=")"/>>
				<<memo text="["/>><<op text="-&gt;"/>>
				<<expr text="ret-type"/>><<memo text="]"/>>
				<<memo text="unless"/>>
				<<memo text="["/>><<op text="=&gt;"/>>
				<<expr text="expr"/>><<memo text="]"/>>
				<<memo text="or"/>>
				<<memo text="["/>><<op text="{"/>>
				<<memo text="..."/>>
				<<op text="}"/>><<memo text="]"/>>
			<</code-inline>>
		<</expr-item>>
	<</expr-table>>
	<<topic>><<link to="{{@page:breve/v1/basic/branches}}">>Branching<</link>><</topic>>
	<<expr-table>>
		<<expr-item name="Conditional" type="Ternary">>
			<<code-inline>>
				<<kw text="if"/>>
				<<expr text="cond"/>>
				<<expr text="on-true-expr"/>>
				<<memo text="["/>><<kw text="else"/>>
				<<expr text="on-false-expr"/>><<memo text="]"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Inverted Conditional" type="Ternary">>
			<<code-inline>>
				<<kw text="unless"/>>
				<<expr text="cond"/>>
				<<expr text="on-true-expr"/>>
				<<memo text="["/>><<kw text="else"/>>
				<<expr text="on-false-expr"/>><<memo text="]"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Conditional Decay" type="Ternary">>
			<<code-inline>>
				<<expr text="on-true-expr"/>>
				<<kw text="when"/>>
				<<expr text="cond"/>>
				<<kw text="else"/>>
				<<expr text="on-false-expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Inverted Conditional Decay" type="Ternary">>
			<<code-inline>>
				<<expr text="on-true-expr"/>>
				<<kw text="except"/>>
				<<expr text="cond"/>>
				<<kw text="else"/>>
				<<expr text="on-false-expr"/>>
			<</code-inline>>
		<</expr-item>>
	<</expr-table>>
	<<topic>><<link to="{{@page:breve/v1/basic/loops}}">>Looping<</link>><</topic>>
	<<expr-table>>
		<<expr-item name="Do (infinite) loop" type="Unary">>
			<<code-inline>>
				<<kw text="do"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Do-while loop" type="Binary">>
			<<code-inline>>
				<<kw text="do"/>>
				<<expr text="expr"/>>
				<<kw text="while"/>>
				<<expr text="cond"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="While loop" type="Binary">>
			<<code-inline>>
				<<kw text="while"/>>
				<<expr text="cond"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Repeat loop (without iterator)" type="Binary">>
			<<code-inline>>
				<<kw text="repeat"/>>
				<<expr text="count"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Repeat loop (with iterator)" type="Ternary">>
			<<code-inline>>
				<<kw text="repeat"/>>
				<<expr text="var-decl"/>>
				<<op text="-&gt;"/>>
				<<expr text="count"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
	<</expr-table>>
	<<topic>>Other<</topic>>
	<<expr-table>>
		<<expr-item name="Chain Assignment" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<op text="="/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Array Indexing" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>><<op text="["/>><<expr text="rhs"/>><<op text="]"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Casting" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<kw text="as"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Type Checking" type="Binary">>
			<<code-inline>>
				<<expr text="lhs"/>>
				<<kw text="is"/>>
				<<expr text="rhs"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Right-Hand Decay" type="Variadic">>
			<<code-inline>>
				<<op text="("/>><<expr text="expr1"/>><<op text=","/>>
				<<expr text="expr2"/>><<memo text="["/>><<op text=","/>>
				<<memo text="...]"/>><<op text=")"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Byte Size" type="Unary">>
			<<code-inline>>
				<<kw text="sizeof"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Element/Field Count" type="Unary">>
			<<code-inline>>
				<<kw text="countof"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Value Type" type="Unary">>
			<<code-inline>>
				<<kw text="typeof"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Pass-by-Move" type="Unary">>
			<<code-inline>>
				<<kw text="move"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Pass-by-Reference" type="Unary">>
			<<code-inline>>
				<<kw text="ref"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Pass-by-Copy" type="Unary">>
			<<code-inline>>
				<<kw text="copy"/>>
				<<expr text="expr"/>>
			<</code-inline>>
		<</expr-item>>
		<<expr-item name="Null Decay" type="Binary">>
			<<code-inline>>
				<<expr text="expr"/>>
				<<op text="??"/>>
				<<expr text="else-expr"/>>
			<</code-inline>>
		<</expr-item>>
	<</expr-table>>
<</section>>
<</main>>
`
