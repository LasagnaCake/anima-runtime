import [
	"bits/main"
	"bits/link"
	"bits/banner"
	"bits/title"
	"bits/code"
	"bits/spacer"
	"bits/card"
	"bits/subcard"
	"bits/p"
	"bits/layout/two-thirds"
	"bits/layout/one-third"
	"bits/code/attr"
	"bits/code/memo"
	"bits/code/fn"
	"bits/code/kw"
	"bits/code/name"
	"bits/code/num"
	"bits/code/op"
	"bits/code/token"
	"bits/code/tab"
	"bits/code/str"
	"bits/code/block"
	"bits/text/b"
	"bits/text/i"
]

html `
<<main>>
	<<banner/>>
	<<spacer height="2em"/>>
	<<title>>A Fresh Way to Develop Your Programs<</title>>
	<div>
	    <<p>>Designed from the ground up with interoperability in mind, with an easy to use plug-and-play interface.<</p>>
	    <<p>>Anima is to C++ what Lua is to C.<</p>>
	</div>
	<<title>>But Why Anima?<</title>>
	<<p>>Anima is designed to...<</p>>
	<div class="hy card flex horizontal center override wrap">
		<div class="hy subcard half">
			<h2 class="hy" style="font-size: larger;">Easily Work With Modern C++</h2>
			<p>Easily call C++ from inside the ART, and vice-versa.</p>
			<p>Shared libraries are even easier than before.</p>
			<p class="hy flex left-text">
				<<code-block>>
					<<memo text="// In breve:"/>>
					<br><br>
					<<memo text="// Declare [C++ -> ART] mapping call:"/>><br>
					<<attr>>Expose<</attr>><<op text="("/>>name <<op text="="/>> <<str>>"myARTFunction"<</str>><<op text=")"/>><br>
					<<fn>>artCall<</fn>> <<op>>:: () -><</op>> <<kw>>void<</kw>> <<op>>{<</op>> <<memo text="/* ... */"/>> <<op>>}<</op>><br><br>
					<<memo text="// Declare [ART -> C++] mapping call (RunTime-specific):"/>><br>
					<<attr>>Native<</attr>><<op text="("/>>name <<op text="="/>> <<str>>"myNativeFunction"<</str>><<op text=")"/>><br>
					<<fn>>nativeCall<</fn>> <<op>>:: () -><</op>> <<kw>>int64<</kw>><br><br>
					<<memo text="// Declare [ART -> C++] mapping call (ART-compatible shared library):"/>><br>
					<<attr>>Shared<</attr>><<op text="("/>>name <<op text="="/>> <<str>>"myLibraryFunction"<</str>><<op text=","/>> lib <<op text="="/>> mylib<<op text=")"/>><br>
					<<fn>>libCall<</fn>> <<op>>:: () -><</op>> <<kw>>string<</kw>>
				<</code-block>>
			</p>
			<p class="hy flex left-text">
				<<code-block>>
					<<memo text="// In c++:"/>>
					<br><br>
					<<memo text="// Invoke exposed function:"/>><br>
					<<memo text="// [env] here represents your ART engine"/>><br>
					env<<op text="."/>><<fn text="expose"/>><<op text="<"/>><<kw text="void"/>><<op text="()>"/>><<op text="("/>><<str>>"myARTFunction"<</str>><<op text=")"/>><<op text="."/>><<fn text="invoke"/>><<op text="();"/>><br>
					<<memo text="// Register a native function:"/>><br>
					<<memo text="// Inside your ART implementation class"/>><br>
					context<<op text="."/>>art<<op text="."/>><<fn text="addNativeCall"/>><<op text="("/>><<str>>"myNativeFunction"<</str>><<op text=","/>> <<memo text="/* Your function here */"/>><<op text=");"/>><br>
				<</code-block>>
			</p>
		</div>
		<div class="hy subcard half">
			<h2 class="hy" style="font-size: larger;">Be Memory-Safe and Performant</h2>
			<p>Values are handled via <<i>>Reference Counting<</i>>, removing the need for background garbage collection.</p>
			<p>Write more deterministic code with ease.</p>
		</div>
	</div>
	<<title>>Meet <<link to="{{@page:breve/v1/breve}}" text="Breve"/>>: the Flagship Language of Anima<</title>>
	<<card>>
		<<subcard>>
			<<code>>
				<<kw>>using import<</kw>> core
				<br><br>
				<<attr>>Main<</attr>><br>
				<<fn>>main<</fn>> <<op>>:: () -><</op>> <<kw>>void<</kw>> <<op>>{<</op>><br>
				<<tab/>>IO<<op>>.<</op>><<fn>>writeLine<</fn>><<op>>(<</op>><<str>>"Hello, World!"<</str>><<op>>)<</op>><br>
				<<op>>}<</op>><br><br>
				<<memo text="// Or, in one line:"/>><br><br>
				<<attr>>Main<</attr>> <<fn>>_<</fn>> <<op>>:: () => (<</op>><<kw text="import"/>> core<<op text=")"/>><<op text="."/>>IO<<op text="."/>><<fn>>writeLine<</fn>><<op>>(<</op>><<str>>"Hello, World!"<</str>><<op>>)<</op>>
			<</code>>
			<<one-third>>
				<p class="hy center-text" style="font-weight: bold;">
					Simplicity meets modernity.
				</p>
				<p class="hy center-text">
					Write <<i>>less<</i>> and make <<i>>more<</i>>.
				</p>
			<</one-third>>
		<</subcard>>
	<</card>>
	<<title>>But Why Breve?<</title>>
	<<p>>Breve is...<</p>>
	<<card>>
		<div class="hy subcard half">
			<h2 class="hy" style="font-size: larger;">Multi-Paradigm</h2>
			<p>
				From classic imperative programming,
				to Object-Oriented Design,
				to Trait-Oriented Programming,
				and even Functional.
			</p>
			<p>Your style, your way.</p>
			<p>No need for pesky metatables.</p>
		</div>
		<div class="hy subcard half">
			<h2 class="hy" style="font-size: larger;">Clean and Concise</h2>
			<p>
				Statically-typed by design,
				ensuring your code will run (and be ran) as intended.
			</p>
			<p>
			</p>
		</div>
	<</card>>
	<<title>>Need to go to a Lower Level? <<link to="{{@page:minima/v1/minima}}" text="Minima"/>> is There for You<</title>>
	<<card>>
		<<subcard>>
			<<code>>
    			<<attr text="shared"/>><<op text="["/>><<str>>"av2console"<</str>><<op text=":"/>><<str>>"av2/console/writeLine_string"<</str>><<op text="]"/>><br>
    			<<tab/>><<kw text="void"/>><<op text="("/>><<kw text="str"/>><<op text=")"/>> <<fn text="print"/>><br>
    			<<kw text="push"/>> <<str>>"Hello, "<</str>><br>
    			<<kw text="push"/>> <<str>>"World!"<</str>><br>
    			<<kw text="add"/>><br>
    			<<kw text="call"/>> <<fn text="print"/>><br>
			<</code>>
			<<one-third>>
				<p class="hy center-text" style="font-weight: bold;">
					Assembly made easy.
				</p>
				<p class="hy center-text">
					Made with clarity and ease-of-use in mind.
				</p>
				<p class="hy center-text">
					Want to create your own language for the ART?
					Just make it output Minima code, and use the
					standard assembler <<inline-code>>minimac<</inline-code>>
					as the final step!
				</p>
			<</one-third>>
		<</subcard>>
	<</card>>
<</main>>
`
