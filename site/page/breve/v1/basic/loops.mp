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
<<main title="Loops">>
<<section>>
	<<title>>Loops<</title>>
	<<p>>
        Another building block of a decent amount of programming languages.
	<</p>>
	<<p>>
        Breve currently contains <<b>>four types<</b>> of loops:
	<</p>>
	<<p>>
        <<b>><<code-inline>><<kw text="do"/>><</code-inline>> loops<</b>>:
        Repeats the expression indefinitely. Written in the form of
        <<code-inline>><<kw text="do"/>> <<expr text="expr"/>><</code-inline>>.
	<</p>>
	<<p>>
        <<b>><<code-inline>><<kw text="do"/>> <<memo text="..."/>> <<kw text="while"/>><</code-inline>> loops<</b>>:
        Executes the expression, then repeatedly executes it again, while the given condition is true. Written in the form of
        <<code-inline>><<kw text="do"/>> <<expr text="expr"/>> <<kw text="while"/>> <<expr text="cond"/>><</code-inline>>.
	<</p>>
	<<p>>
        <<b>><<code-inline>><<kw text="while"/>><</code-inline>> loops<</b>>:
        Executes the expression repeatedly while the given condition is true. Written in the form of
        <<code-inline>><<kw text="while"/>> <<expr text="cond"/>> <<expr text="expr"/>><</code-inline>>.
	<</p>>
	<<p>>
        <<b>><<code-inline>><<kw text="repeat"/>><</code-inline>> loops<</b>>:
        Executes the expression repeatedly while the given condition is true.
        Can be written as:
        <ul>
            <li>
                <<code-inline>><<kw text="repeat"/>> <<expr text="count"/>> <<expr text="expr"/>><</code-inline>>,
                when an iterator variable is not needed. <<b>>Count must be an integer.<</b>>
            </li>
            <li>
                <<code-inline>><<kw text="repeat"/>> <<expr text="var-decl"/>> <<op text="->"/>> <<expr text="count"/>> <<expr text="expr"/>><</code-inline>>,
                when an iterator variable is required. <<b>>Count must be an integer.<</b>>
            </li>
        </ul>
	<</p>>
	<<note>>
		<<p>>
		    For <<code-inline>><<kw text="repeat"/>><</code-inline>> loops, the iterator variable
		    <<i>>will start at the given count, and count down until zero is reached!<</i>>
		<</p>>
		<<p>>
		    To use it as a forward index, make sure to subtract count from it.
		<</p>>
	<</note>>
<</section>>
<</main>>
`
