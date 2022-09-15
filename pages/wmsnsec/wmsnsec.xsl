<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	<head>
		<link rel='stylesheet' href='../style.css' type='text/css' />
	</head>
	<body>
		<h2>"WmSnSec 1" Dataset</h2>
		<table cellspacing="3" cellpadding="2">
			<tr bgcolor="#E0E0E0">
				<th rowspan="2">Message</th>
				<th colspan="5">Ground truth classes</th>
			</tr>
			<tr bgcolor="#FFEEEE">
				<th>Violent content</th>
				<th>Vulgar language</th>
				<th>Offensive language</th>
				<th>Hate and Racism content</th>
				<th>Sexual language</th>
			</tr>
			
			<xsl:for-each select="Messages/Message">
				<tr>
					<td bgcolor="#F0F0F0">
						<xsl:value-of select="Text"/>
					</td>
					
					<td align="center" bgcolor="#FFEEEE">
						<xsl:if test="Classes/Violence = &quot;True&quot;">
							Violence
						</xsl:if>
					</td>
					<td align="center" bgcolor="#FFEEEE">
						<xsl:if test="Classes/Vulgar = &quot;True&quot;">
							Vulgar
						</xsl:if>
					</td>
					<td align="center" bgcolor="#FFEEEE">
						<xsl:if test="Classes/Offensive = &quot;True&quot;">
							Offensive
						</xsl:if>
					</td>
					<td align="center" bgcolor="#FFEEEE">
						<xsl:if test="Classes/HateRacism = &quot;True&quot;">
							Hate and Racism
						</xsl:if>
					</td>
					<td align="center" bgcolor="#FFEEEE">
						<xsl:if test="Classes/Sexual = &quot;True&quot;">
							Sexual
						</xsl:if>
					</td>

				</tr>
			</xsl:for-each>
		</table>
		<br />
		
		<h5>
		This dataset has been used in the paper "Content-based Filtering in On-line Social Networks" submitted to the PSDML 2010 - ECML/PKDD Workshop on Privacy and Security issues in Data Mining and Machine Learning. <br />
		The purpose of the dataset is to provide supervised labels (membership classes) for a set of messages taken from the popular Facebook OSN. Messages was extracted from an heterogeneous set of publicly visible user groups in italian language.
		</h5>
	</body>
	</html>
</xsl:template>

</xsl:stylesheet> 