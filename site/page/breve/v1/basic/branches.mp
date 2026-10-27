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
<<main title="Branches">>
<<section>>
	<<title>>Branches<</title>>
	<<p>>
        One of the main building blocks of every
        programming language.
	<</p>>
	<<p>>
        Breve contains <<b>>four types<</b>> of branches,
        divided in two types and two categories, those being:
	<</p>>
	<<p>>
        <<b>><<code-inline>><<kw text="if"/>><</code-inline>> branches<</b>>:
        Your standard programming language branch, which executes
        code <<b>>when the given condition is true<</b>>. May optionally
        have an <<code-inline>><<kw text="else"/>><</code-inline>>
        clause.
	<</p>>
	<<p>>
        <<b>><<code-inline>><<kw text="unless"/>><</code-inline>> branches<</b>>:
        The opposite of <<code-inline>><<kw text="if"/>><</code-inline>>
        branches, that only execute
        code <<b>>when the given condition is false<</b>>. May also optionally
        have an <<code-inline>><<kw text="else"/>><</code-inline>>
        clause.
	<</p>>
	<<p>>
        <<b>><<code-inline>><<kw text="when"/>><</code-inline>> branches<</b>>:
        Instead of a ternary operator that most programming languages have,
        breve uses an inline if-else, in the form of
		<<code-inline>>
		<<expr text="on-true"/>>
		<<kw text="when"/>>
		<<expr text="condition"/>>
		<<kw text="else"/>>
		<<expr text="on-false"/>>
		<</code-inline>>
        . The condition is checked first, then the appropriate path is taken.
        <<b>>Both paths must exist<</b>>.
	<</p>>
	<<p>>
        <<b>><<code-inline>><<kw text="except"/>><</code-inline>> branches<</b>>:
        The inline version of
        <<code-inline>><<kw text="unless"/>><</code-inline>> branches.
        Like its sibling, <<b>>Both paths must exist<</b>>.
	<</p>>
	<<note>>
		<<p>>
			You are not required to surround the condition with parens.
		<</p>>
	<</note>>
	<<caution>>
		<<p>>
			For every single branch type, every code path must result in a value
			<<b>>of the same data type!<</b>>
		<</p>>
	<</caution>>
	<<code-block>>
		<<memo text="// Conventional if-else branches can be used"/>><br>
		<<memo text="// In place of inline if-elses, if preferred"/>><br><br>
		<<fn text="isEven1"/>>
		<<op text=":: ("/>>
		num <<op text=":"/>> <<kw text="uint64"/>>
		<<op text=")"/>>
		<<op text="=>"/>><br>
		<<tab/>> <<kw text="if"/>> num <<op text="%"/>> <<num text="2"/>><br>
		<<tab/>><<tab/>> IO<<op text="."/>><<fn text="writeLine"/>>
		<<op text="("/>>
		<<dqstr>>Is odd!<</dqstr>>
		<<op text=")"/>><br>
		<<tab/>> <<kw text="else"/>><br>
		<<tab/>><<tab/>> IO<<op text="."/>><<fn text="writeLine"/>>
		<<op text="("/>>
		<<dqstr>>Is even!<</dqstr>>
		<<op text=")"/>><br><br>
		<<fn text="isEven2"/>>
		<<op text=":: ("/>>
		num <<op text=":"/>> <<kw text="uint64"/>>
		<<op text=")"/>>
		<<op text="=>"/>><br>
		<<tab/>> IO<<op text="."/>><<fn text="writeLine"/>>
		<<op text="("/>>
		<<dqstr>>Is odd!<</dqstr>>
		<<kw text="when"/>> num <<op text="%"/>> <<num text="2"/>>
		<<kw text="else"/>>
		<<dqstr>>Is even!<</dqstr>>
		<<op text=")"/>>
	<</code-block>>
<</section>>
<<section>>
	<<title>>
	<<code-inline>><<kw text="likely"/>><</code-inline>>
	and
	<<code-inline>><<kw text="unlikely"/>><</code-inline>>
	<</title>>
	<<p>>
		By default, the compiler tries to assume the likelihood a given
		branch of code is taken, to optimize for a specific code path.
	<</p>>
	<<p>>
		If a given code path is known to be more likely to happen than
		the other, then this behaviour can be overwritten with the
		<<code-inline>><<kw text="likely"/>><</code-inline>>
		and
		<<code-inline>><<kw text="unlikely"/>><</code-inline>>
		keywords.
	<</p>>
	<<p>>
		Inserting these before the condition flags to the compiler the
		appropriate course of action to take for the given branch.
	<</p>>
<</section>>
<<section>>
	<<title>>
	<<code-inline>><<kw text="try"/>><</code-inline>>
	blocks
	<</title>>
	<<p>>
        An advancing branch structure for handling exceptional conditions.
        <<b>>May only be used with nullable variables.<</b>>
	<</p>>
	<<p>>
        It may be declared as such:
	<</p>>
    <<code-block>>
		<<kw text="try"/>>
		<<expr text="var-name"/>>
		<<op text=":="/>>
		<<expr text="possibly-null-expr"/>><br>
		<<tab/>><<expr text="do-if-exists"/>><br>
		<<kw text="else"/>><br>
		<<tab/>><<expr text="do-if-does-not-exist"/>>
	<</code-block>>
	<<p>>
        The block is only executed when the variable <<code-inline>><<expr text="var-name"/>><</code-inline>>
        has a value different from <<code-inline>><<num text="null"/>><</code-inline>>.
        Otherwise, the code in the <<code-inline>><<kw text="else"/>><</code-inline>> clause is executed.
	<</p>>
	<<p>>
        The <<code-inline>><<kw text="else"/>><</code-inline>> clause is optional.
	<</p>>
<</section>>
<</main>>
`
