<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="dh-thethanhvien-nav">
			<div class="dh-container no-gutters">
				<div class="mobileNav">Danh mục</div>
				<ul>
					<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
				</ul>
			</div>
		</section>
		<section class="dh-thethanhvien-list">
			<div class="dh-container">
				<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone" mode="Nav">
		<li>
			<a>
				<xsl:attribute name="href">
					<xsl:text>#section-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
	<xsl:template match="Zone" mode="Content">
		<xsl:apply-templates select="News"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News">
		<div class="collection-item">
			<xsl:attribute name="id">
				<xsl:text>section-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="row">
				<div class="col-xl-5 content">
					<h5>
						<xsl:value-of select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h5>
					<div class="thongso">
						<i class="lnr lnr-chart-bars"></i>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="thongso">
						<i class="lnr lnr-gift"></i>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
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
		</div>
	</xsl:template>
</xsl:stylesheet>