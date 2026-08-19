import [
	"bits/docs/breve/main"
	"bits/docs/breve/eili"
	"bits/docs/breve/lili"
	"bits/docs/breve/expr-table"
	"bits/docs/breve/expr-item"
	"bits/text/b"
	"bits/text/i"
	"bits/p"
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
<<main title="Transfer Semantics">>
<<section>>
	<<title>>Transfer Semantics<</title>>
	<<p>>
		<<i>>Transfer Semantics<</i>> is the nature if how a given value
		is passed around.
	<</p>>
	<<p>>
		In Breve, how a value gets passed around is defined at
		<<i>>assignment<</i>>, not declaration. There are three ways to
		pass values around:
	<</p>>
	<<p>>
		By <<code-inline>><<kw text="copy"/>><</code-inline>>: This
		creates a copy of a given value, <<b>>keeping the source
		intact<</b>>.
	<</p>>
	<<p>>
		By <<code-inline>><<kw text="ref"/>><</code-inline>>: This
		simply passes a reference to the given value. The ART uses
		ARC (Automatic Reference Counting) for managing references,
		so there's no need to worry about memory management.
	<</p>>
	<<p>>
		By <<code-inline>><<kw text="move"/>><</code-inline>>: The
		default way values get passed around, when not specified.
		This moves the value from the source to the destination,
		and <<b>>clears the source of its reference<</b>>.
	<</p>>
	<<p>>
		With some exceptions, all values in breve are, by default,
		passed by <<code-inline>><<kw text="move"/>><</code-inline>>.
	<</p>>
	<<note>>
		<<p>>All constants are copied.<</p>>
		<<p>>Prefix increment and decrement result in a reference to the operated value.<</p>>
		<<p>>Postfix increment and decrement result in a copy to the original value.<</p>>
	<</note>>
	<<p>>
		For example:
	<</p>>
	<<code-block>>
		var1 <<op text=":="/>> <<dqstr>>This is a string!<</dqstr>>
		<br><br>
		<<memo text="// var1 is now empty (would read void)"/>><br>
		var2 <<op text=":="/>> var1
		<br><br>
		<<memo text="// var3 holds a copy of var2, so var2 can be modified"/>><br>
		var3 <<op text=":="/>> <<kw text="copy"/>> var2
		<br><br>
		<<memo text="// var1 holds a reference to var2, so any changes in var2 will be reflected here"/>><br>
		var1 <<op text="="/>> <<kw text="ref"/>> var2
		<br><br>
	<</code-block>>
<</section>>
<<quiz question="{{@base64:embed/quiz/breve/v1/basic/transfer-semantics.json}}"/>>
<hr class="hy">
<<section>>
	<<title>>Default Variable Behaviour<</title>>
	<<p>>
		For variables, its default transfer semantic can be changed.
	<</p>>
	<<p>>
		By prepending the appropriate attribute at declaration (
			<<code-inline>><<attr text="ByCopy"/>><</code-inline>>,
			<<code-inline>><<attr text="ByRef"/>><</code-inline>>, or
			<<code-inline>><<attr text="ByMove"/>><</code-inline>>
		), you can change how the variable passes its value around.
	<</p>>
	<<p>>
		This only affects <<b>>how the variable sends<</b>> its value,
		not <<b>>how it recieves<</b>>.
	<</p>>
	<<p>>
		This behaviour gets overridden by the transfer operators.
	<</p>>
<</section>>
<</main>>
`
