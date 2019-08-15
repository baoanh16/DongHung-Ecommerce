<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="dh-thanhtoan-1">
			<div class="dh-container">
				<xsl:choose>
					<xsl:when test="count(/ShoppingCart/CartItem)=0">
						<h1>Bạn chưa có sản phẩm nào trong giỏ hàng</h1>
					</xsl:when>
					<xsl:otherwise>
						<h1>Giỏ hàng</h1>
						<div class="cart-table">
							<table>
								<thead>
									<tr>
										<th>&#160;</th>
										<th>
											<xsl:value-of select="/ShoppingCart/ProductText"></xsl:value-of>
										</th>
										<th>SIZE</th>
										<th>
											<xsl:value-of select="/ShoppingCart/QuantityText"></xsl:value-of>
										</th>
										<th>
											<xsl:value-of select="/ShoppingCart/PriceText"></xsl:value-of>
										</th>
										<th>
											<xsl:value-of select="/ShoppingCart/ItemTotalText"></xsl:value-of>
										</th>
									</tr>
								</thead>
								<tbody>
									<xsl:apply-templates select="/ShoppingCart/CartItem"></xsl:apply-templates>
								</tbody>
							</table>
						</div>
						<div class="summary-row row">
							<div class="col-sm-6">
								<div class="btn-wrapper">
									<a class="btn-continue" href="/">
										<xsl:attribute name="href">
											<xsl:value-of select="/ShoppingCart/ContinueShoppingUrl"></xsl:value-of>
										</xsl:attribute>
										<em class="lnr lnr-chevron-left"></em>
										<span>Tiếp tục mua hàng</span>
									</a>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="summary-cart">
									<div class="total">
										<span>Tạm tính</span>
										<span>
											<xsl:value-of select="/ShoppingCart/SubTotal"></xsl:value-of>
										</span>
									</div>
									<div class="total">
										<span>Giảm giá</span>
										<span>
											<xsl:value-of select="/ShoppingCart/DiscountTotal"></xsl:value-of>
										</span>
									</div>
									<div class="total total-price">
										<span>đơn hàng:</span>
										<span>
											<xsl:value-of select="/ShoppingCart/Total"></xsl:value-of>
										</span>
									</div>
									<div class="note">
										<span>Giá chưa bao gồm VAT</span>
									</div>
									<a href="javascript:void(0)" class="btn-checkout" id="checkout">
										<!-- <xsl:attribute name="href">
											<xsl:text>/thanh-toan-dang-nhap</xsl:text>
										</xsl:attribute> -->
										<xsl:attribute name="onclick">
											<xsl:text>setLocation('</xsl:text>
											<xsl:text>/thanh-toan-dang-nhap</xsl:text>
											<xsl:text>');return false;</xsl:text>
										</xsl:attribute>
										<span>Tiến hành thanh toán</span>
										<em class="lnr lnr-chevron-right"></em>
									</a>
								</div>
							</div>
						</div>
					</xsl:otherwise>
				</xsl:choose>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="CartItem">
		<tr>
			<td>
				<a class="remove-cart" href="#" onclick="AjaxCart.removefromcart(this);return false;">
					<xsl:attribute name="data-itemguid">
						<xsl:value-of select="ItemGuid"></xsl:value-of>
					</xsl:attribute>
					<em class="mdi mdi-close-circle"></em>
				</a>
			</td>
			<td>
				<a class="product-cart">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<div class="product-img">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<div class="product-name">
						<span>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</span>
					</div>
				</a>
			</td>
			<td data-title="Size">
				<div class="product-size">
					<span>38</span>
				</div>
			</td>
			<td>
				<div class="product-quantity">
					<div class="btn-des">-</div>
					<input type="text" maxlength="10" class="qty-input" onchange="AjaxCart.updatecart();return false;">
						<xsl:attribute name="name">
							<xsl:text>itemquantity</xsl:text>
							<xsl:value-of select="ItemGuid"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="value">
							<xsl:value-of select="Quantity"></xsl:value-of>
						</xsl:attribute>
					</input>
					<div class="btn-inc">+</div>
				</div>
			</td>
			<td>
				<div class="product-price">
					<span>
						<xsl:value-of select="Price"></xsl:value-of>
					</span>
				</div>
				<div class="product-discount">
					<span>Giảm giá 20%</span>
				</div>
			</td>
			<td>
				<div class="product-total">
					<span>
						<xsl:value-of select="ItemSubTotal"></xsl:value-of>
					</span>
				</div>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>