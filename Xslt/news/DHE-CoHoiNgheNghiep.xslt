<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h3>
			<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
		</h3>
		<div class="table-wrapper">
			<table>
				<thead>
					<tr>
						<th>Vị trí</th>
						<th>Bộ phận</th>
						<th>ngày đăng</th>
						<th>Địa điểm</th>
					</tr>
				</thead>
				<tbody>
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</tbody>
			</table>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<tr>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="SubTitle"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="FileUrl"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>