name main

import [
	"bits/docs/nav/section"
	"bits/docs/nav/sidebar"
	"bits/docs/content"
	"bits/docs/page"
	"bits/link"
]

default {
	title Breve
}

html_begin `
<<page title="{{title}}">>
	<<nav-sidebar root="{{@page:breve/v1/breve}}" title="Breve">>
		<<nav-section title="Basic">>
            <ol class="hy">
                <li class="hy"><<link to="{{@page:breve/v1/basic/start}}">>Start<</link>></li>
                <li class="hy"><<link to="{{@page:breve/v1/basic/structure}}">>Structure<</link>></li>
                <li class="hy"><<link to="{{@page:breve/v1/basic/expressions}}">>Expressions<</link>></li>
                <li class="hy"><<link to="{{@page:breve/v1/basic/transfer-semantics}}">>Transfer Semantics<</link>></li>
                <li class="hy"><<link to="{{@page:breve/v1/basic/variables}}">>Variables<</link>></li>
                <li class="hy"><<link to="{{@page:breve/v1/basic/basic-types}}">>Basic Types<</link>></li>
                <li class="hy"><<link to="{{@page:breve/v1/basic/functions}}">>Functions<</link>></li>
                <li class="hy"><<link to="{{@page:breve/v1/basic/branches}}">>Branches<</link>></li>
                <li class="hy"><<link to="{{@page:breve/v1/basic/loops}}">>Loops<</link>></li>
                <li class="hy">Modules</li>
                <li class="hy">Operators</li>
                <li class="hy">Importing Files & Libraries</li>
            </ol>
		<</nav-section>>
		<<nav-section title="Advanced">>
            <ol class="hy">
                <li class="hy">Extending Types</li>
                <li class="hy">Anonymous Blocks</li>
                <li class="hy">Attributes</li>
                <li class="hy">Inline Assembly (Minima)</li>
                <li class="hy">Events</li>
                <li class="hy">Shared Libraries</li>
                <li class="hy">Internal Calls</li>
                <li class="hy">Tricks, Tips and Techniques</li>
            </ol>
		<</nav-section>>
		<</nav-section>>
		<<nav-section title="Conventions">>
            <ol class="hy">
                <li class="hy">Names</li>
                <li class="hy">Styling</li>
                <li class="hy">Declarations</li>
                <li class="hy">Expressions</li>
            </ol>
		<</nav-section>>
	<</nav-sidebar>>
	<<content>>
`

html_end `
	<</content>>
<</page>>
`
