<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<div class="summary-coupon-wrapper">
			<div class="cart-coupon">
				<h3>Mã giảm giá - quà tặng</h3>
				<div class="form-group">
					<input type="text" id="couponCode" autocomplete="off" max-length="20"></input>
					<button class="btn-submitcoupon" onclick="AjaxCart.applycoupon();return false;" runat="server">áp dụng</button>
				</div>
				<xsl:if test="/ShoppingCart/CouponApplyResult!=''">
					<span class="coupon-result">
						<xsl:value-of select="/ShoppingCart/CouponApplyResult"></xsl:value-of>
					</span>
				</xsl:if>
				<span class="coupon-apply-error"></span>
			</div>
			<div class="cart-summary">
				<h3>
					<span>ĐƠN HÀNG CỦA BẠN</span>
					<a class="lnr lnr-pencil">
						<xsl:attribute name="href">
							<xsl:value-of select="/ShoppingCart/CartPageUrl"></xsl:value-of>
						</xsl:attribute>
					</a>
				</h3>
				<xsl:apply-templates select="/ShoppingCart/CartItem"></xsl:apply-templates>
				<div class="sub-total">
					<strong>Tạm tính</strong>
					<span>
						<xsl:value-of select="/ShoppingCart/SubTotal"></xsl:value-of>
					</span>
				</div>
				<div class="shipping-fee">
					<strong>phí vận chuyển</strong>
					<span>
						<xsl:value-of select="/ShoppingCart/ShippingTotal"></xsl:value-of>
					</span>
				</div>
				<div class="discount">
					<strong>GIẢM GIÁ</strong>
					<span>
						<xsl:value-of select="/ShoppingCart/DiscountTotal"></xsl:value-of>
					</span>
				</div>
				<div class="total-price">
					<strong>
						TỔNG CỘNG
						<small>Giá chưa bao gồm VAT</small>
					</strong>
					<span>
						<xsl:value-of select="/ShoppingCart/Total"></xsl:value-of>
					</span>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="CartItem">
		<div class="cart-product">
			<div class="product-name">
				<div class="name">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</div>
				<div class="subtitle">
					<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
			<div class="product-price">
				<div class="price">
					<xsl:value-of select="Price"></xsl:value-of>
				</div>
				<div class="quantity">
					<xsl:text>x </xsl:text>
					<xsl:value-of select="Quantity"></xsl:value-of>
				</div>
				<div class="total">
					<xsl:value-of select="ItemTotal"></xsl:value-of>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>