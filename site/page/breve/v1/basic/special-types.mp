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
<<main title="Special Types">>
<<section>>
	<<title>>Special Types<</title>>
	<<p>>
        Breve possesses a set of special types, those being:
        <ul>
            <li><<b>>Arrays<</b>></li>
            <li><<b>>Nullable (option) types<</b>></li>
        </ul>
	<</p>>
<</section>>
<<section>>
	<<title>>Arrays<</title>>
	<<p>>
        Array types are used for storing sequential data of a given type.
        Breve arrays are <<i>>dynamic<</i>>, meaning that you can add and remove elements from them.
	<</p>>
	<<p>>
        To declare an array type, use
        <<code-inline>><<op text="["/>><<expr text="type"/>><<op text="]"/>><</code-inline>>.
	<</p>>
	<<p>>To create an array, several methods can be used:<</p>>
    <<code-block>>
    	<<memo>>If types are guaranteed to be the same, thus inferrable:<</memo>><br>
    	<<op text="["/>><<expr text="expr"/>><<memo>>[<</memo>><<op text=","/>> <<memo>>...]<</memo>><<op text="]"/>>
    <br><br>
    	<<memo>>If types are compatible with one another:<</memo>><br>
       	<<kw text="new"/>>
       	<<op text="["/>><<expr text="type"/>><<op text="]"/>>
       	<<op text="{"/>><<expr text="expr"/>><<memo>>[<</memo>><<op text=","/>> <<memo>>...]<</memo>><<op text="}"/>>
    <br><br>
    	<<memo>>If you know the minimum size:<</memo>><br>
       	<<kw text="new"/>>
       	<<expr text="type"/>><<op text="["/>><<expr text="size"/>><<op text="]"/>>
       	<<op text="{"/>><<expr text="expr"/>><<memo>>[<</memo>><<op text=","/>> <<memo>>...]<</memo>><<op text="}"/>>
    <br><br>
    	<<memo>>Examples:<</memo>>
    <br><br>
    	<<op text="["/>><<num text="1"/>><<op text=","/>> <<num text="2"/>><<op text=","/>> <<num text="3"/>><<op text="]"/>>
    <br><br>
       	<<kw text="new"/>>
       	<<op text="["/>><<kw text="int"/>><<op text="]"/>>
       	<<op text="{"/>><<num text="1"/>><<op text=","/>> <<num text="2"/>><<op text=","/>> <<num text="3"/>><<op text="}"/>>
    <br><br>
       	<<kw text="new"/>>
       	<<kw text="float"/>><<op text="["/>><<num text="6"/>><<op text="]"/>>
       	<<op text="{"/>><<num text="1"/>><<op text=","/>> <<num text="2"/>><<op text=","/>> <<num text="3"/>><<op text="}"/>>
    <</code-block>>
	<<p>>
        To create an empty array, simply use the <<code-inline>><<kw text="new"/>><</code-inline>> expression, while ommiting the curly bractets.
	<</p>>
<</section>>
<<section>>
	<<title>>Nullable (Optional) Types<</title>>
	<<p>>
        Nullable types are types that can accept <<code-inline>><<num text="null"/>><</code-inline>>
        as a possible value, alongside its own type. These types are useful for functions
        that has operations that may fail.
	<</p>>
	<<p>>
        To declare a nullable type, use
        <<code-inline>><<op text="?"/>><<expr text="type"/>><</code-inline>>
        or <<code-inline>><<kw text="maybe"/>> <<expr text="type"/>><</code-inline>>.
	<</p>>
<</section>>
<</main>>
`
