<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<div class="collection-item">
			<a style="text-decoration: none;color: inherit;">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="row">
					<div class="col-xl-5 content">
						<h5>
							<xsl:value-of select="Title"></xsl:value-of>
						</h5>
						<p>
							<xsl:value-of select="Description"></xsl:value-of>
						</p>
					</div>
					<div class="col-xl-7 img">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>