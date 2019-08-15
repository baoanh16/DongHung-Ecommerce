<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:if test="count(/CheckoutMethod/Shipping)>0">
			<div class="cart-shipping-edit">
				<h2>Phương thức vận chuyển</h2>
				<div class="shipping-form">
					<div class="row">
						<xsl:apply-templates select="/CheckoutMethod/Shipping"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="count(/CheckoutMethod/Payment)>0">
			<div class="cart-payment-edit">
				<h2>Phương thức thanh toán</h2>
				<div class="payment-form">
					<div class="row">
						<xsl:apply-templates select="/CheckoutMethod/Payment"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</xsl:if>
		<div class="btn-wrapper">
			<a class="btn-back" href="#">
				<xsl:attribute name="href">
					<xsl:text>/cart</xsl:text>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<em class="lnr lnr-chevron-left"></em>
				<span>Quay lại</span>
			</a>
			<a class="btn-continue" href="javascript:void(0)">
				<xsl:attribute name="onclick">
					<xsl:text>AjaxCheckout.saveorder(true, '</xsl:text>
					<xsl:value-of select="/CheckoutMethod/NextPageUrl"></xsl:value-of>
					<xsl:text>');return false;</xsl:text>
				</xsl:attribute>
				<span>Thanh toán</span>
				<em class="lnr lnr-chevron-right"></em>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="Shipping">
		<div class="form-check col-sm-6">
			<input type="radio" name="ShippingMethod" onchange="AjaxCheckout.getshippingtotal(this)">
				<xsl:if test="position()=1">
					<xsl:attribute name="checked">
						<xsl:text>checked</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="id">
					<xsl:text>shipping-</xsl:text>
					<xsl:value-of select="Id"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="Id"></xsl:value-of>
				</xsl:attribute>
			</input>
			<label>
				<xsl:attribute name="for">
					<xsl:text>shipping-</xsl:text>
					<xsl:value-of select="Id"></xsl:value-of>
				</xsl:attribute>
				<span>
					<xsl:value-of select="Title"></xsl:value-of>
				</span>
			</label>
		</div>
	</xsl:template>
	<xsl:template match="Payment">
		<div class="form-check col-12">
			<input type="radio" name="PaymentMethod">
				<xsl:attribute name="id">
					<xsl:text>payment-</xsl:text>
					<xsl:value-of select="Id"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="value">
					<xsl:value-of select="Id"></xsl:value-of>
				</xsl:attribute>
				<xsl:if test="position()=1">
					<xsl:attribute name="checked">
						<xsl:text>checked</xsl:text>
					</xsl:attribute>
					<xsl:attribute name="value">
						<xsl:value-of select="Id"></xsl:value-of>
					</xsl:attribute>
				</xsl:if>
			</input>
			<label>
				<xsl:attribute name="for">
					<xsl:text>payment-</xsl:text>
					<xsl:value-of select="Id"></xsl:value-of>
				</xsl:attribute>
				<xsl:if test="Description!=''">
					<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
				</xsl:if>
			</label>
		</div>
	</xsl:template>
</xsl:stylesheet>