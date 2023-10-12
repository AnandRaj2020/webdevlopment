<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/data">
<html>
	<body>
		<h2>Employee List</h2> 
            <xsl:for-each select="/data/person">
            <Employee>
                <name>
                    <xsl:value-of select="firstname" />
                    <xsl:value-of select="lastname"/>
                </name>
                <id>
                    <xsl:value-of select="id "/>
                </id>
                <technologies>
                    <xsl:for-each select="skills/item">
                        <number>
                            <xsl:value-of select="position()"/>
                            <xsl:value-of select="."/>
                        </number>
                    </xsl:for-each>
                </technologies>
            </Employee>
        </xsl:for-each>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>