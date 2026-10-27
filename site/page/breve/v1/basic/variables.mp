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
<<main title="Variables">>
<<section>>
	<<title>>Variables<</title>>
	<<p>>
		Variables are a way to store data in Breve. These come in many
		different flavours:
	<</p>>
	<<p>>
		<<b>>Local variables<</b>>: These are stored in the
		<<b>>scope-local stack<</b>>,
		and can only be utilized in the scope they are declared in.
	<</p>>
	<<p>>
		<<b>>Global variables<</b>>: These are stored in the
		<<b>>global space<</b>>. While their declarations are scoped,
		their value can be accessed from any scope, by using the same
		<<b>>address name<</b>>.<br>
		Declared with the
		<<code-inline>>
			<<attr text="Global"/>><<op text="("/>>name<<op text="="/>><<dqstr>><<expr text="addr-name"/>><</dqstr>><<op text=")"/>>
		<</code-inline>>
		attribute.
	<</p>>
	<<p>>
		<<b>>Static variables<</b>>: These are stored in a hidden
		section of the <<b>>global space<</b>>.<br>
		Declared with the
		<<code-inline>>
			<<attr text="Static"/>>
		<</code-inline>>
		attribute.
	<</p>>
	<<p>>
		<<b>>External variables<</b>>: These variables are stored
		in an implementation-defined place. This behaviour varies from
		one ART implementation to another, as it is intended to be one
		way for cross-language communication.
		<<b>>This variable location can only be read from.<</b>>
		Declared with the
		<<code-inline>>
			<<attr text="Out"/>><<op text="("/>>name<<op text="="/>><<dqstr>><<expr text="addr-name"/>><</dqstr>><<op text=")"/>>
		<</code-inline>>
		attribute.
	<</p>>
<</section>>
<<section>>
	<<title>>Declarations<</title>>
	<<p>>Variables are declared as such:<</p>>
	<<code-block>>
		<<expr text="name"/>>
		<<op text=":"/>>
		<<expr text="type"/>>
		<<op text="="/>>
		<<expr text="value"/>>
	<</code-block>>
	<<p>>Where:<</p>>
	<<p>>
		<<code-inline>><<expr text="name"/>><</code-inline>> is the
		variable's name. Follows the same rules as variables in most
		conventional languages.
	<</p>>
	<<p>>
		<<code-inline>><<expr text="type"/>><</code-inline>> is the
		variable's type. These can be basic types, or classes.
		<<b>>
			Optional if
			<<code-inline>><<expr text="value"/>><</code-inline>>
			exists.
		<</b>>
	<</p>>
	<<p>>
		<<code-inline>><<expr text="value"/>><</code-inline>> is the
		variable's value.
		<<b>>
			Optional if
			<<code-inline>><<expr text="type"/>><</code-inline>>
			exists.
		<</b>>
	<</p>>
	<<p>>
		Thusly, variables can be declared as:
	<</p>>
	<<code-block>>
		var1
		<<op text=":"/>> <<kw text="int64"/>>
		<br><br>
		var2
		<<op text=":"/>><<op text="="/>>
		<<num text="0.2f"/>>
		<br><br>
		var3
		<<op text=":"/>> <<kw text="uint16"/>>
		<<op text="="/>> <<num text="5"/>>
	<</code-block>>
	<<p>>
		And many other ways.
	<</p>>
<</section>>
<<quiz question="{{@base64:embed/quiz/breve/v1/basic/variables-2.json}}"/>>
<</main>>
`
