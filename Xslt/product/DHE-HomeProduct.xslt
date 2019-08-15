<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/ProductList/Product)>0">
			<div class="wrapper">
				<div class="title">
					<div class="row no-gutters">
						<div class="col-lg-6 offset-lg-6">
							<h2>
								<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
							</h2>
						</div>
					</div>
				</div>
				<div class="list-item">
					<div class="row no-gutters">
						<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-lg-4">
			<div class="product-item _gray">
				<xsl:choose>
					<xsl:when test="position()=1">
						<xsl:attribute name="data-speed">
							<xsl:text>1</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="position()=2">
						<xsl:attribute name="data-speed">
							<xsl:text>2</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="position()=3">
						<xsl:attribute name="data-speed">
							<xsl:text>3</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="position()=4">
						<xsl:attribute name="data-speed">
							<xsl:text>1.5</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="position()=5">
						<xsl:attribute name="data-speed">
							<xsl:text>2.5</xsl:text>
						</xsl:attribute>
					</xsl:when>
					<xsl:when test="position()=6">
						<xsl:attribute name="data-speed">
							<xsl:text>3.5</xsl:text>
						</xsl:attribute>
					</xsl:when>
				</xsl:choose>
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
								<xsl:value-of select="Title"></xsl:value-of>
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
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>