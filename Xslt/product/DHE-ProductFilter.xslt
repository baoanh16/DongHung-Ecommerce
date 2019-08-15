<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="row ajaxfilterresponse">
			<xsl:apply-templates select="/ProductFilter/Group"></xsl:apply-templates>
		</div>
	</xsl:template>
	<xsl:template match="Group">
		<div class="col-xl filter-item">
			<div class="form-group">
				<label>
					<xsl:value-of select="Title"></xsl:value-of>
				</label>
				<select class="select-show ajaxsort" name="">
					<option>
						<xsl:attribute name="value">
							<xsl:value-of select="ClearUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:text>Tất cả</xsl:text>
					</option>
					<xsl:apply-templates select="Option"></xsl:apply-templates>
				</select>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Option">
		<option class="ajaxlink">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>
</xsl:stylesheet>