<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="dh-tintuc-ct">
			<div class="dh-container no-gutters">
				<div class="heading">
					<div class="title">
						<h2>
							<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
							<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="time">
						<p>
							<xsl:value-of select="/NewsDetail/CreatedDate"></xsl:value-of>
						</p>
					</div>
					<div class="fb-like" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true"></div>
				</div>
				<div class="fullContent">
					<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="bottom fb-like" data-layout="button_count" data-action="like" data-size="small" data-show-faces="true" data-share="true">
					<xsl:attribute name="data-href">
						<xsl:value-of select="/NewsDetail/FullUrl"></xsl:value-of>
					</xsl:attribute>
				</div>
			</div>
		</section>
		<section class="dh-tinkhac">
			<div class="dh-container">
				<div class="dh-title">
					<h3>
						<xsl:value-of select="/NewsDetail/NewsOtherText"></xsl:value-of>
					</h3>
				</div>
				<div class="swiper-next swiper-nav">
					<em class="mdi mdi-chevron-right"></em>
				</div>
				<div class="swiper-prev swiper-nav">
					<em class="mdi mdi-chevron-left"></em>
				</div>
				<div class="swiper-container">
					<div class="swiper-wrapper">
						<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsOther">
		<div class="swiper-slide">
			<a href="javascript:void(0)">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<figure>
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
					<figcaption>
						<div class="title">
							<h5>
								<xsl:value-of select="Title"></xsl:value-of>
							</h5>
						</div>
						<div class="time">
							<p>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:template>
</xsl:stylesheet>