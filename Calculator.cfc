<!--- Calculator.cfc --->
<cfcomponent displayname="Calculator" hint="Performs basic arithmetic operations.">

    <cffunction name="add" access="public" returntype="numeric" hint="Add two numbers">
        <cfargument name="a" type="numeric" required="true">
        <cfargument name="b" type="numeric" required="true">
        <cfreturn arguments.a + arguments.b>
    </cffunction>

    <cffunction name="subtract" access="public" returntype="numeric" hint="Subtract two numbers">
        <cfargument name="a" type="numeric" required="true">
        <cfargument name="b" type="numeric" required="true">
        <cfreturn arguments.a - arguments.b>
    </cffunction>

    <cffunction name="multiply" access="public" returntype="numeric" hint="Multiply two numbers">
        <cfargument name="a" type="numeric" required="true">
        <cfargument name="b" type="numeric" required="true">
        <cfreturn arguments.a * arguments.b>
    </cffunction>

    <cffunction name="divide" access="public" returntype="numeric" hint="Divide two numbers with zero division check">
        <cfargument name="a" type="numeric" required="true">
        <cfargument name="b" type="numeric" required="true">
        <cfif arguments.b eq 0>
            <cfthrow message="Division by zero error" detail="Second argument cannot be zero.">
        </cfif>
        <cfreturn arguments.a / arguments.b>
    </cffunction>

</cfcomponent>
