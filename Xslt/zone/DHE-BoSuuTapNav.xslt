<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<div class="mobileNav">Danh mục</div>
			<ul>
				<li>
					<xsl:if test="/ZoneList/CurrentZoneDepth='0'">
						<xsl:attribute name="class">
							<xsl:text>active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="/ZoneList/ParentUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:text>Tất cả</xsl:text>
					</a>
				</li>
				<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
			</ul>
		</xsl:if>
	</xsl:template>
	<!-- <xsl:template match="Zone">
		<xsl:if test="count(/ZoneList/Zone) > 0 and IsActive='true'">
			<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
		</xsl:if>
	</xsl:template> -->
	<xsl:template match="Zone">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>