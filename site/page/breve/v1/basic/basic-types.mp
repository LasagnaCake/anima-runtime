import [
	"bits/docs/breve/main"
	"bits/docs/breve/eili"
	"bits/docs/breve/lili"
	"bits/docs/breve/type-table"
	"bits/docs/breve/type"
	"bits/docs/breve/type-range"
	"bits/docs/breve/type-default"
	"bits/docs/breve/type-info"
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
<<main title="Basic Types">>
<<section>>
	<<title>>Basic Types<</title>>
	<<p>>
		Breve's standard library possesses a few types that map directly
        to Anima's underlying basic types:
	<</p>>
	<<type-table>>
		<<type name="void">>
			<<type-info>>
				Empty. Different from null, as it indicates that the
				<<b>>source itself does not exist<</b>>
				whatsoever.
				<<b>>Cannot be used as a value directly.<</b>>
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="void"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="void"/>><</code-inline>>
			<</type-range>>
		<</type>>
		<<type name="null">>
			<<type-info>>
				Null value. Indicates that the
				<<b>>value does not exist<</b>>
				All nullable types (
				those prefixed with
				<<code-inline>><<op text="?"/>><</code-inline>>
				or
				<<code-inline>><<kw text="maybe"/>><</code-inline>>
				) can accept it as a value.
				<<b>>Cannot be used as a type directly.<</b>>
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="null"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="null"/>><</code-inline>>
			<</type-range>>
		<</type>>
		<<type name="bool">>
			<<type-info>>
				Boolean value.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="false"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="true"/>><</code-inline>>
				or
				<<code-inline>><<num text="false"/>><</code-inline>>
			<</type-range>>
		<</type>>
		<<type name="int8">>
			<<type-info>>
				Signed 8-bit integer.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="-128"/>><</code-inline>>
				to
				<<code-inline>><<num text="127"/>><</code-inline>>,
				inclusive.
			<</type-range>>
		<<type name="int16">>
			<<type-info>>
				Signed 16-bit integer.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="-32,768"/>><</code-inline>>
				to
				<<code-inline>><<num text="32,767"/>><</code-inline>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="int32">>
			<<type-info>>
				Signed 32-bit integer.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="-2,147,483,648"/>><</code-inline>>
				to
				<<code-inline>><<num text="2,147,483,647"/>><</code-inline>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="int64">>
			<<type-info>>
				Signed 64-bit integer.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="-9,223,372,036,854,775,808"/>><</code-inline>>
				to
				<<code-inline>><<num text="9,223,372,036,854,775,807"/>><</code-inline>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="uint8">>
			<<type-info>>
				Unsigned 8-bit integer.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="0"/>><</code-inline>>
				to
				<<code-inline>><<num text="255"/>><</code-inline>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="uint16">>
			<<type-info>>
				Unsigned 16-bit integer.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="0"/>><</code-inline>>
				to
				<<code-inline>><<num text="65,535"/>><</code-inline>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="uint32">>
			<<type-info>>
				Unsigned 32-bit integer.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="0"/>><</code-inline>>
				to
				<<code-inline>><<num text="4,294,967,295"/>><</code-inline>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="uint64">>
			<<type-info>>
				Unsigned 64-bit integer.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<code-inline>><<num text="0"/>><</code-inline>>
				to
				<<code-inline>><<num text="18,446,744,073,709,551,615"/>><</code-inline>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="float32">>
			<<type-info>>
				32-bit (single-precision) floating-point number.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0.0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<eq>>
					&PlusMinus;1.7 &times; 10<sup>&PlusMinus;38</sup>
				<</eq>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="float64">>
			<<type-info>>
				64-bit (double-precision) floating-point number.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0.0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<eq>>
					&PlusMinus;1.7 &times; 10<sup>&PlusMinus;308</sup>
				<</eq>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="float128">>
			<<type-info>>
				128-bit (extended-precision) floating-point number.
			<</type-info>>
			<<type-default>>
				<<code-inline>><<num text="0.0"/>><</code-inline>>
			<</type-default>>
			<<type-range>>
				<<eq>>
					&PlusMinus;1.1897 &times; 10<sup>&PlusMinus;4932</sup>
				<</eq>>,
				inclusive.
			<</type-range>>
		<</type>>
		<<type name="char">>
			<<type-info>>
				UTF-8 text character. Effectively an unicode
				codepoint.
			<</type-info>>
			<<type-default>>
				Same as a 32-bit unsigned integer.
			<</type-default>>
			<<type-range>>
				Same as a 32-bit unsigned integer.
			<</type-range>>
		<</type>>
		<<type name="string">>
			<<type-info>>
				UTF-8 string. Stores each character individually as
				an unicode codepoint.
			<</type-info>>
			<<type-default>>
				Empty string (<<code-inline>><<dqstr>><</dqstr>><</code-inline>>).
			<</type-default>>
			<<type-range>>
				18,446,744,073,709,551,615 characters.
			<</type-range>>
		<</type>>
		<<type name="bytes">>
			<<type-info>>
				Binary data.
			<</type-info>>
			<<type-default>>
				No bytes.
			<</type-default>>
			<<type-range>>
				18,446,744,073,709,551,615 bytes.
			<</type-range>>
		<</type>>
		<<type name="vector">>
			<<type-info>>
				Four-component (X, Y, Z and W) vector of 32-bit
				floating point values.
			<</type-info>>
			<<type-default>>
				A vector with all components set to
				<<code-inline>><<num text="0"/>><</code-inline>>.
			<</type-default>>
			<<type-range>>
				Same as <<code-inline>><<kw text="float"/>><</code-inline>>
				for each component.
			<</type-range>>
		<</type>>
		<<type name="matrix">>
			<<type-info>>
				4x4 square matrix of 32-bit floating point values.
			<</type-info>>
			<<type-default>>
				A matrix set to its identity.
			<</type-default>>
			<<type-range>>
				Same as <<code-inline>><<kw text="float"/>><</code-inline>>
				for each cell.
			<</type-range>>
		<</type>>
	<</type-table>>
	<<p>>
		All types in Breve are checked at compile-time for type safety.
		Numeric types are automatically converted between each other on
		any operation.
	<</p>>
	<<p>>
		Variables are automatically initialized to their default values.
	<</p>>
<</section>>
<<section>>
	<<title>>The <<code-inline>><<kw text="any"/>><</code-inline>> Type<</title>>
	<<p>>
		The
		<<code-inline>><<kw text="any"/>><</code-inline>>
		type is a special type that indicates that the reciever <<b>>
		can accept the value of (almost) any other type
		<</b>>.
		All basic types (except
		<<code-inline>><<kw text="void"/>><</code-inline>>,
		<<code-inline>><<kw text="null"/>><</code-inline>> and
		<<code-inline>><<kw text="type"/>><</code-inline>>)
		derive from it.
	<</p>>
	<<p>>
		While it can <<i>>receive<</i>> any value, only
		<<code-inline>><<kw text="any"/>><</code-inline>> types
		can assign to other
		<<code-inline>><<kw text="any"/>><</code-inline>> types
		without casting.
	<</p>>
<</section>>
<<section>>
	<<title>>The <<code-inline>><<kw text="type"/>><</code-inline>> Type<</title>>
	<<p>>
		The <<code-inline>><<kw text="type"/>><</code-inline>> type
		is what is considered a <<b>>metatype<</b>>, since it
		holds a <<i>>type<</i>>, instead of a conventional value.
	<</p>>
	<<p>>
		Due to its nature, it can only accept other
		<<code-inline>><<kw text="type"/>><</code-inline>>s as value,
		and cannot be casted to and from
		<<code-inline>><<kw text="any"/>><</code-inline>>.
	<</p>>
<</section>>
<<section>>
	<<title>>Casting<</title>>
	<<p>>
		Casting allows the programmer to convert a value of a given type
		to another. it is done with the
		<<code-inline>><<kw text="as"/>><</code-inline>>
		operator.
	<</p>>
	<<code-block>>
		<<memo text="// Casts the float as an int (= truncates to 2)"/>><br>
		var <<op text=":"/>> <<kw text="int"/>>
		<<op text="= ("/>><<num text="2.08"/>>
		<<kw text="as"/>>
		<<kw text="int"/>><<op text=")"/>>
	<</code-block>>
	<<p>>
		Both the source and destination types are checked if they are
		compatible.
		<<code-inline>><<kw text="any"/>><</code-inline>>
		is automatically assumed to be castable.
	<</p>>
	<<caution>>
		<<p>>
			Be careful when casting from
			<<code-inline>><<kw text="any"/>><</code-inline>>
			to any type! Make sure you check at runtime that the
			destination type is the expected type!
		<</p>>
	<</caution>>
<</section>>
<<quiz question="{{@base64:embed/quiz/breve/v1/basic/basic-types.json}}"/>>
<</main>>
`
