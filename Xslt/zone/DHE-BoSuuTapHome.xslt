<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/ZoneList/Zone) > 0">
			<div class="swiper-container swiper-top">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
				<div class="swiper-scrollbar"></div>
			</div>
			<div class="swiper-container swiper-bottom">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/ZoneList/Zone" mode="Parent"></xsl:apply-templates>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="item">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>item active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<div class="heading">
					<xsl:if test="Description != ''">
						<span>
							<xsl:value-of select="Description"></xsl:value-of>
						</span>
					</xsl:if>
					<xsl:if test="Description = ''">
						<span>
							<xsl:text>&#160;</xsl:text>
						</span>
					</xsl:if>
				</div>
				<div class="label">
					<span>
						<xsl:value-of select="Title"></xsl:value-of>
					</span>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="Parent">
		<xsl:apply-templates select="Zone" mode="Child"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone" mode="Child">
		<div class="swiper-slide">
			<a class="item" style="color: inherit;text-decoration: none;">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<div class="content">
					<h3>
						<xsl:value-of select="Title"></xsl:value-of>
					</h3>
					<p>
						<xsl:value-of select="Description"></xsl:value-of>
					</p>
				</div>
				<div class="img">
					<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>