<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Banner">
		<div class="swiper-slide">
			<div class="item">
				<div class="background">
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<div class="middle">
						<div class="background-center">
							<xsl:attribute name="bg-img">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
						</div>
					</div>
				</div>
				<div class="content">
					<div class="medium1-2">
						<div class="circle"></div>
					</div>
					<div class="medium1-2">
						<div class="text">
							<h2>
								<xsl:value-of select="Title"></xsl:value-of>
							</h2>
							<p>
								<xsl:value-of select="Description"></xsl:value-of>
							</p>
						</div>
						<div class="button">
							<a href="javascipt:void(0)">
								<span class="button-main">Xem chi tiết</span>
								<span class="button-circle"></span>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>