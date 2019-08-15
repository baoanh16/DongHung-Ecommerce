<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="dh-product-detail">
			<div class="row no-gutters product-info">
				<div class="col-lg-6">
					<div class="thumbnail-big-wrapper">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:if test="count(/ProductDetail/ProductImages)>0">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="BigImages"></xsl:apply-templates>
								</xsl:if>
							</div>
						</div>
					</div>
					<div class="thumbnail-small-wrapper">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:if test="count(/ProductDetail/ProductImages)>0">
									<xsl:apply-templates select="/ProductDetail/ProductImages" mode="SmallImages"></xsl:apply-templates>
								</xsl:if>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="info-wrapper _gray">
						<xsl:choose>
							<xsl:when test="floor(/ProductDetail/ShowOption div 1) mod 2 = 1">
								<xsl:attribute name="class">
									<xsl:text>info-wrapper _yellow</xsl:text>
								</xsl:attribute>
							</xsl:when>
							<xsl:when test="floor(/ProductDetail/ShowOption div 2) mod 2 = 1">
								<xsl:attribute name="class">
									<xsl:text>info-wrapper _green</xsl:text>
								</xsl:attribute>
							</xsl:when>
						</xsl:choose>
						<div class="title">
							<h1>
								<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
								<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
							</h1>
							<p class="subtitle">
								<xsl:value-of select="/ProductDetail/SubTitle"></xsl:value-of>
							</p>
						</div>
						<div class="price">
							<span>
								<xsl:value-of select="/ProductDetail/Price"></xsl:value-of>
							</span>
						</div>
						<div class="detail-wrapper">
							<p>
								<span>Tình trạng: </span>
								<xsl:choose>
									<xsl:when test="floor(/ProductDetail/ShowOption div 4) mod 2 = 1">
										<xsl:text>Còn hàng</xsl:text>
									</xsl:when>
									<xsl:when test="floor(/ProductDetail/ShowOption div 8) mod 2 = 1">
										<xsl:text>Hết hàng</xsl:text>
									</xsl:when>
								</xsl:choose>
							</p>
							<p>
								<span>Mã sản phẩm: </span>
								<span>
									<xsl:value-of select="/ProductDetail/Code"></xsl:value-of>
								</span>
							</p>
							<div class="color-wrapper">
								<span>Màu sắc:</span>
								<ul class="color-list">
									<li>
										<a class="color active" href="javascript:void(0)"></a>
									</li>
									<li>
										<a class="color" href="javascript:void(0)"></a>
									</li>
								</ul>
							</div>
							<div class="size-wrapper">
								<span>Size:</span>
								<ul class="size-list">
									<li>
										<a class="size" href="javascript:void(0)">35</a>
									</li>
									<li>
										<a class="size" href="javascript:void(0)">35</a>
									</li>
									<li>
										<a class="size" href="javascript:void(0)">35</a>
									</li>
									<li>
										<a class="size" href="javascript:void(0)">35</a>
									</li>
									<li>
										<a class="size" href="javascript:void(0)">35</a>
									</li>
								</ul>
							</div>
							<div class="addtocart-wrapper">
								<div class="quantity-wrapper">
									<span>Số lượng:</span>
									<div class="quantity">
										<div class="btn-des">-</div>
										<input type="text" value="1">
											<xsl:attribute name="name">
												<xsl:text>addtocart_</xsl:text>
												<xsl:value-of select="/ProductDetail/ProductId" disable-output-escaping="yes"></xsl:value-of>
												<xsl:text>.EnteredQuantity</xsl:text>
											</xsl:attribute>
										</input>
										<div class="btn-inc">+</div>
									</div>
								</div>
								<div class="btn-wrapper">
									<div class="btn-addtocart-wrapper">
										<a href="#!" class="btn-addtocart" onclick="AjaxCart.addproducttocart_details(this); return false;">
											<xsl:attribute name="data-productid">
												<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
											</xsl:attribute>
											Thêm vào giỏ hàng
										</a>
									</div>
									<div class="btn-addwishlist-wrapper">
										<a class="btn-addwishlist" href="javascript:void(0)"></a>
									</div>
								</div>
							</div>
						</div>
						<div class="description">
							<xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
					</div>
				</div>
			</div>
			<div class="row related-product">
				<div class="col-12">
					<h2>Sản phẩm liên quan</h2>
					<div class="related-product-slider">
						<div class="swiper-container">
							<div class="swiper-wrapper">
								<xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
							</div>
						</div>
						<div class="swiper-navigation">
							<div class="swiper-prev">
								<span class="mdi mdi-chevron-left"></span>
							</div>
							<div class="swiper-next">
								<span class="mdi mdi-chevron-right"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode="BigImages">
		<div class="swiper-slide">
			<div class="thumbnail swiper-zoom-container">
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
	</xsl:template>
	<xsl:template match="ProductImages" mode="SmallImages">
		<div class="swiper-slide">
			<div class="thumbnail">
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
	</xsl:template>
	<xsl:template match="ProductOther">
		<div class="swiper-slide">
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