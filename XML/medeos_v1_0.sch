<?xml version="1.0" encoding="UTF-8"?>
<schema xmlns="http://purl.oclc.org/dsdl/schematron"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:m="http://www.medeos.org/v1.0.0"
	>
	
	<ns prefix="m" uri="http://www.medeos.org/v1.0.0"/>
	<pattern>
		<rule context="m:Patient">
			<assert test="not(@id) or (@id and @idType)">If 'Patient' has 'id' attribute then it 'idType' attribute must be present too.</assert>
		</rule>
	</pattern>
	
	<pattern>
		<rule context="m:Sender">
			<assert test="m:Person">'Sender' requires 'Person' element as its child.</assert>
		</rule>
	</pattern>
</schema>

