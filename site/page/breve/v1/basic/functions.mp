import [
	"bits/docs/breve/main"
	"bits/text/b"
	"bits/text/i"
	"bits/text/eq"
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
<<main title="Functions">>
<<section>>
	<<title>>Functions<</title>>
	<<p>>
        Functions are one way of creating reusable code in Breve. They
        are declared as follows:
	<</p>>
	<<code-block>>
		<<expr text="name"/>>
		<<op text=":: ("/>><<expr text="arg"/>><<memo text="["/>><<op text=","/>>
		<<memo text=" ...]"/>><<op text=")"/>>
		<<op text="->"/>>
		<<expr text="type"/>>
	<</code-block>>
	<<p>>
		And can be followed by
		<<code-inline>><<op text="=>"/>><</code-inline>>
		and an expression,
		<<code-inline>><<op text="{"/>>
			<<memo text="..."/>>
		<<op text="}"/>><</code-inline>>
		for a code block, or nothing, for forward declarations.
		For each part:
	<</p>>
	<<p>>
		<<code-inline>><<expr text="name"/>><</code-inline>> is the
		function's name, and follows the same rule as the variable's name.
		<<b>>Required.<</b>>
	<</p>>
	<<p>>
		<<code-inline>><<expr text="arg"/>><</code-inline>> is a
		function argument. These are declared like variables. If more
		than one, each argument must be separated by a comma. If
		an argument has a default value, that argument <<b>>must<</b>>
		be placed after all non-defaulted arguments.
		<<b>>Optional.<</b>>
	<</p>>
	<<p>>
		<<code-inline>><<expr text="type"/>><</code-inline>> is the
		function's return type.
		<<b>>Optional for non-forward declarations, defaults to
		auto-deducing the type.<</b>>
	<</p>>
	<<p>>
        Thusly, a function can be declared like the following:
	<</p>>
	<<code-block>>
		<<memo text="// Declaring the function here, code comes later"/>><br>
		<<fn text="doNothing"/>>
		<<op text=":: () ->"/>>
		<<kw text="void"/>>
		<br><br>
		<<memo text="// Declaring a single-line function"/>><br>
		<<fn text="square"/>>
		<<op text=":: ("/>>
		num <<op text=":"/>> <<kw text="float32"/>>
		<<op text=") =>"/>>
		<<op text="("/>><<kw text="copy"/>> num<<op text=")"/>>
		<<op text="*"/>> num
		<br><br>
		<<memo text="// Declaring a full-body function"/>><br>
		<<fn text="factorial"/>>
		<<op text=":: ("/>>
		num <<op text=":"/>> <<kw text="uint64"/>>
		<<op text=") ->"/>> <<kw text="uint64"/>>
		<<op text="{"/>><br>
		<<tab/>> out <<op text=":="/>> <<num text="0"/>><br>
		<<tab/>> <<kw text="repeat"/>>
		i <<op text=":"/>> <<kw text="uint64"/>> <<op text="->"/>> num <br>
		<<tab/>> <<tab/>> out <<op text="+="/>>
		<<op text="("/>><<kw text="copy"/>> i<<op text=")"/>>
		<<op text="+"/>> 1 <br>
		<<tab/>> <<kw text="return"/>> out <br>
		<<op text="}"/>>
	<</code-block>>
	<<p>>
		And many other possible ways.
	<</p>>
<</section>>
<<section>>
	<<title>>External Functions<</title>>
	<<p>>
		External functions are your way of calling cross-language code.
        They come in two types: <<b>>Native Functions<</b>> and
        <<b>>Shared Functions<</b>>.
	<</p>>
	<<p>>
		<<b>>Native Functions<</b>> are one way of calling cross-language
		code. Native functions execute code that is <<b>>defined
		by the ART implementation.<</b>>
	<</p>>
	<<p>>
		Declared via the
		<<code-inline>><<attr>>Native<</attr>></code-inline>>
		attribute,
		followed by how one would forward declare a function.
	<</p>>
	<<code-block>>
		<<attr>>Native<</attr>><<op text="("/>>
		name <<op text="="/>>
		<<dqstr>><<expr text="native-name"/>><</dqstr>>
		<<op text=")"/>>
	<</code-block>>
	<<p>>
		<<b>>Shared Functions<</b>>, much like native functions, are
		also for calling cross-language code. Unlike their siblings,
		however, shared functions <<b>>execute code defined in an
		Anima-compatible shared library<</b>>.
	<</p>>
	<<p>>
		Declared via the
		<<code-inline>><<attr>>Shared<</attr>><</code-inline>>
		attribute,
		followed by how one would forward declare a function.
	<</p>>

	<<code-block>>
		<<attr>>Shared<</attr>><<op text="("/>>
		lib <<op text="="/>>
		<<expr text="dynlib-path"/>><<op text=","/>>
		name <<op text="="/>>
		<<dqstr>><<expr text="fn-name"/>><</dqstr>>
		<<op text=")"/>>
	<</code-block>>
<</section>>
<</main>>
`
