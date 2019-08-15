<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<h2>Thông tin người mua</h2>
		<div class="address-form">
			<div class="row">
				<div class="form-group col-12">
					<label>
						<xsl:value-of select="/CheckoutAddress/FullNameText"></xsl:value-of>
						<small>*</small>
					</label>
					<input type="text" name="Address_FirstName" placeholder="Nhập họ tên">
						<xsl:attribute name="value">
							<xsl:value-of select="/CheckoutAddress/FirstName"></xsl:value-of>
						</xsl:attribute>
					</input>
				</div>
				<div class="form-group col-sm-6">
					<label>
						<xsl:value-of select="/CheckoutAddress/PhoneText"></xsl:value-of>
						<small>*</small>
					</label>
					<input type="text" name="Address_Phone" placeholder="Nhập Số điện thoại">
						<xsl:attribute name="value">
							<xsl:value-of select="/CheckoutAddress/Phone"></xsl:value-of>
						</xsl:attribute>
					</input>
				</div>
				<div class="form-group col-sm-6">
					<label>
						<xsl:value-of select="/CheckoutAddress/EmailText"></xsl:value-of>
					</label>
					<input type="text" name="Address_Email" placeholder="Nhập email">
						<xsl:attribute name="value">
							<xsl:value-of select="/CheckoutAddress/Email"></xsl:value-of>
						</xsl:attribute>
					</input>
				</div>
				<div class="form-group col-sm-6">
					<label>
						<xsl:value-of select="/CheckoutAddress/ProvinceText"></xsl:value-of>
						<small>*</small>
					</label>
					<select name="Address_Province" onchange="AjaxCheckout.getdistrictsbyprovinceguid(this, 'Address_District')">
						<option value="">
							<xsl:value-of select="/CheckoutAddress/SelectProvinceText"></xsl:value-of>
						</option>
						<xsl:apply-templates select="/CheckoutAddress/Provinces"></xsl:apply-templates>
					</select>
				</div>
				<div class="form-group col-sm-6">
					<label>
						<xsl:value-of select="/CheckoutAddress/DistrictText"></xsl:value-of>
						<small>*</small>
					</label>
					<select name="Address_District">
						<option value="">
							<xsl:value-of select="/CheckoutAddress/SelectDistrictText"></xsl:value-of>
						</option>
						<xsl:apply-templates select="/CheckoutAddress/Districts"></xsl:apply-templates>
					</select>
				</div>
				<div class="form-group col-12">
					<label>
						<xsl:value-of select="/CheckoutAddress/AddressText"></xsl:value-of>
						<small>*</small>
					</label>
					<input type="text" name="Address_Address" placeholder="Vd: 64 đường Hiệp Bình">
						<xsl:attribute name="value">
							<xsl:value-of select="/CheckoutAddress/Address"></xsl:value-of>
						</xsl:attribute>
					</input>
				</div>
				<div class="form-group col-12">
					<label>Ghi chú</label>
					<textarea name="OrderNote" cols="30" rows="2" placeholder="Ví dụ: Chuyển hàng ngoài giờ hành chính">
						<xsl:value-of select="/CheckoutAddress/OrderNote"></xsl:value-of>
					</textarea>
				</div>
			</div>
			<div class="row">
				<div class="form-check col-12">
					<input id="same-address" type="radio" name="rdo-address" checked="checked" />
					<label for="same-address">Giao hàng đến địa chỉ trên</label>
				</div>
				<div class="form-check col-12">
					<input id="other-address" type="radio" name="rdo-address" />
					<label for="other-address">Giao hàng đến địa chỉ khác</label>
				</div>
				<div class="user-form col-12">
					<div class="row">
						<div class="form-group col-12">
							<label>
								<xsl:value-of select="/CheckoutAddress/FullNameText"></xsl:value-of>
								<small>*</small>
							</label>
							<input type="text" name="ShippingAddress_FirstName" placeholder="Nhập họ tên">
								<xsl:attribute name="value">
									<xsl:value-of select="/CheckoutAddress/ShippingFirstName"></xsl:value-of>
								</xsl:attribute>
							</input>
						</div>
						<div class="form-group col-sm-6">
							<label>
								<xsl:value-of select="/CheckoutAddress/PhoneText"></xsl:value-of>
								<small>*</small>
							</label>
							<input type="text" name="ShippingAddress_Phone" placeholder="Nhập Số điện thoại">
								<xsl:attribute name="value">
									<xsl:value-of select="/CheckoutAddress/ShippingPhone"></xsl:value-of>
								</xsl:attribute>
							</input>
						</div>
						<div class="form-group col-sm-6">
							<label>
								<xsl:value-of select="/CheckoutAddress/EmailText"></xsl:value-of>
								<small>*</small>
							</label>
							<input type="text" name="ShippingAddress_Email" placeholder="Nhập email">
								<xsl:attribute name="value">
									<xsl:value-of select="/CheckoutAddress/ShippingEmail"></xsl:value-of>
								</xsl:attribute>
							</input>
						</div>
						<div class="form-group col-sm-6">
							<label>
								<xsl:value-of select="/CheckoutAddress/ProvinceText"></xsl:value-of>
								<small>*</small>
							</label>
							<select name="ShippingAddress_Province" onchange="AjaxCheckout.getdistrictsbyprovinceguid(this, 'ShippingAddress_District')">
								<option value="">
									<xsl:value-of select="/CheckoutAddress/SelectProvinceText"></xsl:value-of>
								</option>
								<xsl:apply-templates select="/CheckoutAddress/Provinces" mode="Shipping"></xsl:apply-templates>
							</select>
						</div>
						<div class="form-group col-sm-6">
							<label>
								<xsl:value-of select="/CheckoutAddress/DistrictText"></xsl:value-of>
								<small>*</small>
							</label>
							<select name="ShippingAddress_District">
								<option value="">
									<xsl:value-of select="/CheckoutAddress/SelectDistrictText"></xsl:value-of>
								</option>
								<xsl:apply-templates select="/CheckoutAddress/Districts" mode="Shipping"></xsl:apply-templates>
							</select>
						</div>
						<div class="form-group col-12">
							<label>
								<xsl:value-of select="/CheckoutAddress/AddressText"></xsl:value-of>
								<small>*</small>
							</label>
							<input type="text" name="ShippingAddress_Address" placeholder="Vd: 64 đường Hiệp Bình">
								<xsl:attribute name="value">
									<xsl:value-of select="/CheckoutAddress/ShippingAddress"></xsl:value-of>
								</xsl:attribute>
							</input>
						</div>
						<div class="form-group col-12">
							<label>Ghi chú</label>
							<textarea name="OrderNote" cols="30" rows="2" placeholder="Ví dụ: Chuyển hàng ngoài giờ hành chính">
								<xsl:value-of select="/CheckoutAddress/OrderNote"></xsl:value-of>
							</textarea>
						</div>
					</div>
				</div>
				<div class="form-check col-12">
					<input id="bill-export" type="checkbox" name="chk-billexport" />
					<label for="bill-export">Xuất hoá đơn</label>
				</div>
				<div class="bill-export-wrapper col-12">
					<div class="bill-export-form">
						<div class="row">
							<div class="form-group col-sm-6">
								<label>
									<xsl:value-of select="/CheckoutAddress/CompanyTaxCodeText"></xsl:value-of>
									<small>*</small>
								</label>
								<input type="text" name="Invoice_CompanyTaxCode">
									<xsl:attribute name="value">
										<xsl:value-of select="/CheckoutAddress/CompanyTaxCode"></xsl:value-of>
									</xsl:attribute>
								</input>
							</div>
							<div class="form-group col-sm-6">
								<label>
									<xsl:value-of select="/CheckoutAddress/CompanyNameText"></xsl:value-of>
									<small>*</small>
								</label>
								<input type="text" name="Invoice_CompanyName">
									<xsl:attribute name="value">
										<xsl:value-of select="/CheckoutAddress/CompanyName"></xsl:value-of>
									</xsl:attribute>
								</input>
							</div>
							<div class="form-group col-12">
								<label>
									<xsl:value-of select="/CheckoutAddress/CompanyAddressText"></xsl:value-of>
									<small>*</small>
								</label>
								<input type="text" name="Invoice_CompanyAddress">
									<xsl:attribute name="value">
										<xsl:value-of select="/CheckoutAddress/CompanyAddress"></xsl:value-of>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Provinces">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Guid"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>
	<xsl:template match="Provinces" mode="Shipping">
		<option>
			<xsl:if test="ShippingIsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Guid"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>
	<xsl:template match="Districts">
		<option>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Guid"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>
	<xsl:template match="Districts" mode="Shipping">
		<option>
			<xsl:if test="ShippingIsActive='true'">
				<xsl:attribute name="selected">
					<xsl:text>selected</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="value">
				<xsl:value-of select="Guid"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>
</xsl:stylesheet>