<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="dh-tuyendung-ct-1">
			<div class="no-gutters">
				<div class="heading">
					<div class="title">
						<h2>
							<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
							<xsl:value-of select="/NewsDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h2>
					</div>
					<div class="time">
						<p>
							<xsl:value-of select="/NewsDetail/FileUrl"></xsl:value-of>
						</p>
					</div>
				</div>
				<div class="request">
					<div class="row">
						<xsl:apply-templates select="/NewsDetail/NewsAttributes"></xsl:apply-templates>
					</div>
				</div>
				<div class="fullContent">
					<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
					<div class="button">
						<a class="btn" href="javascript:void(0)">Ứng tuyển</a>
					</div>
				</div>
			</div>
			<div class="news-other">
				<div class="heading">
					<div class="title">
						<h2>Tin tuyển dụng khác</h2>
					</div>
				</div>
				<div class="table-wrapper">
					<table>
						<thead>
							<tr>
								<th>Vị trí</th>
								<th>Bộ phận</th>
								<th>ngày đăng</th>
								<th>Địa điểm</th>
							</tr>
						</thead>
						<tbody>
							<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>
						</tbody>
					</table>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="NewsAttributes">
		<div class="col-sm-6 attr-item">
			<div class="row">
				<div class="col-5">
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
				</div>
				<div class="col-7">
					<p>
						<xsl:value-of select="Content"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="NewsOther">
		<tr>
			<td>
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title"></xsl:value-of>
				</a>
				<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="SubTitle"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="FileUrl"></xsl:value-of>
			</td>
			<td>
				<xsl:value-of select="BriefContent"></xsl:value-of>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>