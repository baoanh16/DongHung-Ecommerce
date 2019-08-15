<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:if test="position()=1">
			<section class="dh-gioithieu-1">
				<div class="dh-container">
					<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=2">
			<section class="dh-gioithieu-2">
				<div class="dh-container">
					<div class="dh-wrapper">
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<div class="row list-item">
							<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=3">
			<section class="dh-gioithieu-3">
				<div class="dh-container">
					<div class="dh-wrapper">
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=4">
			<section class="dh-gioithieu-4">
				<div class="dh-container">
					<div class="dh-wrapper">
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews4"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position()=5">
			<section class="dh-gioithieu-5">
				<div class="dh-container">
					<div class="dh-wrapper">
						<div class="row">
							<xsl:apply-templates select="News" mode="ZoneNews5"></xsl:apply-templates>
						</div>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<xsl:if test="position()=1">
			<div class="item">
				<div class="row no-gutters">
					<div class="col-xl-7 content">
						<h5>
							<xsl:value-of select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h5>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
					<div class="col-xl-5 img">
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
		</xsl:if>
		<xsl:if test="position()=2">
			<div class="item">
				<div class="row no-gutters">
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
					<div class="col-xl-5 content">
						<h5>
							<xsl:value-of select="Title"></xsl:value-of>
							<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h5>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-lg item">
			<figure>
				<div class="icon">
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
					<h5>
						<xsl:value-of select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h5>
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<xsl:if test="position()=1">
			<div class="text">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
			<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>
		<xsl:if test="position()=2">
			<div class="row">
				<div class="col-lg-6">
					<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="col-lg-6">
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
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews4">
		<div class="col-lg col-sm-6">
			<article class="item">
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
				<h4>
					<xsl:value-of select="Title"></xsl:value-of>
				</h4>
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</article>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews5">
		<div class="col-lg-6">
			<h3>
				<xsl:value-of select="Title"></xsl:value-of>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</h3>
			<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
		</div>
		<div class="col-lg-6">
			<img>
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>
</xsl:stylesheet>