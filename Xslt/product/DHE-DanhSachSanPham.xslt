<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="ajaxresponse">
			<div class="row no-gutters list-item ajaxresponsewrap">
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
				<xsl:if test="/ProductList/NextPageUrl!=''">
					<div class="viewAll col-12">
						<a class="btn btn-more ajaxpagerlink">
							<xsl:attribute name="href">
								<xsl:value-of select="/ProductList/NextPageUrl" />
							</xsl:attribute>
							<em class="mdi-arrow-down mdi"></em>
						</a>
					</div>
				</xsl:if>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-lg-4 package ">
			<div class="product-item _gray">
				<xsl:choose>
					<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
						<xsl:attribute name="class">
							<xsl:text>product-item _yellow</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
						<xsl:attribute name="class">
							<xsl:text>product-item _green</xsl:text>
						</xsl:attribute>
					</xsl:when>
				</xsl:choose>
				<div class="heading">
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h4>
				</div>
				<div class="body">
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
					<div class="price">
						<p>
							<xsl:value-of select="Price"></xsl:value-of>
						</p>
					</div>
					<div class="code">
						<p>
							<xsl:value-of select="Code"></xsl:value-of>
						</p>
					</div>
					<div class="button">
						<a class="detail">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<span class="button-main">Chi tiết</span>
							<span class="button-circle"></span>
						</a>
					</div>
					<xsl:choose>
						<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
							<div class="tag">
								<span>
									<xsl:text>Sale off</xsl:text>
								</span>
							</div>
						</xsl:when>
						<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
							<div class="tag">
								<span>
									<xsl:text>New</xsl:text>
								</span>
							</div>
						</xsl:when>
					</xsl:choose>
					<a class="add-wishlist" href="#">
						<span class="lnr lnr-heart"></span>
					</a>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>